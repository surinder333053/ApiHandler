import Foundation
import Alamofire


 var isTokenExpire : Bool = false

func PostData(methodUrl:String,parameter:[String:String]?,header:[String:String]?, completion:@escaping (NSDictionary?,String?)->()){
    
    let url = developementUrl + methodUrl
    print(url)
    

    Alamofire.request(url, method: .post, parameters: parameter, encoding: JSONEncoding.default, headers: header).responseJSON
        {
            response in
            
            if let data = response.data, let str = String(data: data, encoding: String.Encoding.utf8){
                print("Server Error: " + str)
            }
            
            switch(response.result)
            {
            case .success(_):
                print(response)
                if let data = response.result.value as? NSDictionary{
                    
                    if data.value(forKey: "Message") as? String == "Token not matched" && data.value(forKey: "status") as? String == "False"{
                        UIViewController().hideactivityIndicator()
                        let app = UIApplication.shared.delegate as! AppDelegate
                        UserDefaults.standard.removeObject(forKey: "token")
                        UserDefaults.standard.removeObject(forKey: "loginUserDetail")
                        UserDefaults.standard.removeObject(forKey: "alreadyExist")
                        isTokenExpire = true
                         utility().displayAlertWithCompletion(title: "", message: "Session expired", control: ["OK"], completion: { (str) in
                             app.silentLogin()
                          })
                       
                       // completion(data,"")
                    }else{
                        isTokenExpire = false
                    completion(data,"")
                    }
                }
                break
            case .failure(let error):
               // print(response)
                print(error.localizedDescription)
                _ = response.response?.statusCode
                completion(nil,"\(error.localizedDescription)")
                break
            }
    }
}


func GetData(methodUrl:String,parameter:[String:String]?,header:[String:String]?, completion:@escaping (NSDictionary?,String?)->()){
    
    let url =  methodUrl
    print(url)
    
    Alamofire.request(url, method: .get, parameters: parameter, encoding: JSONEncoding.default, headers: header).responseJSON
        {
            response in
            
            if let data = response.data, let str = String(data: data, encoding: String.Encoding.utf8){
                print("Server Error: " + str)
            }
            
            switch(response.result)
            {
            case .success(_):
                print(response)
                if let data = response.result.value as? NSDictionary{
                    completion(data,"")
                }
                break
            case .failure(let error):
                // print(response)
                print(error.localizedDescription)
                _ = response.response?.statusCode
                completion(nil,"\(error.localizedDescription)")
                break
            }
    }
}

func uploadData(methodUrl: String,imageData: Data?, parameters: [String : Any]?,header:[String:String]?,completion:@escaping (NSDictionary?,String?)->()){
    
    let url = developementUrl + methodUrl
    
    Alamofire.upload(multipartFormData: { (multipartFormData) in
        if parameters != nil{
            for (key, value) in parameters! {
                print(value)
                print(key)
                multipartFormData.append("\(value)".data(using: String.Encoding.utf8)!, withName: key as String)
            }
        }
        
        if let productionData = imageData{
            multipartFormData.append(productionData, withName: "profile_image", fileName: "\(UUID().uuidString).jpg", mimeType: "\(UUID().uuidString)/jpg")
        }
        
        
    }, usingThreshold: UInt64.init(), to: url, method: .post, headers: header) { (result) in
        switch result{
        case .success(let upload,_,_ ):
            upload.responseJSON { response in
                
                if let data = response.data, let str = String(data: data, encoding: String.Encoding.utf8){
                    print("Server Error: " + str)
                }
                if let data = response.result.value as? NSDictionary {
                    print(data)
                    completion(data,"")
                }
                else{
                   // print(response.error ?? "")
                    print((response.response?.statusCode) ?? 0)
                    completion(nil,"Could not connect to the server.")
                }
            }
        case .failure(let error):
            print("Error in upload: \(error.localizedDescription)")
            completion(nil,"\(error.localizedDescription)")
        }
    }
}


