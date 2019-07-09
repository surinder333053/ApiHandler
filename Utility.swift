
import Foundation
import UIKit
import Alamofire

class Connectivity {
    class func isConnectedToInternet() ->Bool {
        return NetworkReachabilityManager()!.isReachable
    }
}

class utility : NSObject{
    
    
    static let roundImgShadowColor = UIColor(red: 255.0/255.0, green: 251.0/251.0 , blue: 230.0/255.0, alpha: 1.0)
    
    let topController = UIApplication.topViewController()
    
    static var searchArray = Array<contactModel>()
    
    func pushViewControl(ViewControl:String,view:UIViewController){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: ViewControl)
        view.navigationController?.pushViewController(controller, animated: true)
    }
    
    //MARK:- Display alert with completion
    
    func displayAlertWithCompletion(title:String,message:String,control:[String],completion:@escaping (String)->()){
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        for str in control{
            let alertAction = UIAlertAction(title: str, style: .default, handler: { (action) in
                completion(str)
            })
            alertController.addAction(alertAction)
        }
        topController?.present(alertController, animated: true, completion: nil)
    }
    
    
    //MARK:- Display alert without completion
    
    func displayAlert(title:String,message:String,control:[String]){
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        for str in control{
            let alertAction = UIAlertAction(title: str, style: .default, handler: { (action) in
            })
            alertController.addAction(alertAction)
        }
        topController?.present(alertController, animated: true, completion: nil)
    }
    
    static func referralIsEmpty(message:String,view:UIView,tblview:UITableView){
        tblview.isHidden = true
        let noOrderLabel = UILabel()
        view.addSubview(noOrderLabel)
        noOrderLabel.translatesAutoresizingMaskIntoConstraints = false
        noOrderLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        noOrderLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        noOrderLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        noOrderLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10).isActive = true
        noOrderLabel.textAlignment = .center
        noOrderLabel.text = message
        noOrderLabel.textColor = customAppColor
        noOrderLabel.font = UIFont(name: "Ubuntu", size: 24)
    }
    
   static func Token() -> String {
        var TokenValue = String()
        if let token = UserDefaults.standard.value(forKey:"token") as? String{
            TokenValue = token
        }else{
            TokenValue = "abczyxrpq"
        }
        return TokenValue
    }
    
    static func textFieldEmpty(txtField:UITextField)->Bool{
        if txtField.text == ""{
            return true
        }else{
            return false
        }
    }
    
   static func isValidEmail(testStr:String) -> Bool {
        // print("validate calendar: \(testStr)")
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
 /*  static func loginUserEmail()->String{
        let decoder = JSONDecoder()
        var loginData = String()
        if let questionData = UserDefaults.standard.data(forKey: "loginUserDetail"),
            let data = try? decoder.decode(LoginUserDetailModel.self, from: questionData) {
            loginData = data.email ?? ""
        }
        return loginData
    }*/
    
   static func LoginUserDecodedDetail()->UserModel{
        let decoder = JSONDecoder()
        var loginData = UserModel()
        if let questionData = UserDefaults.standard.data(forKey: "loginUserDetail"),
            let data = try? decoder.decode(UserModel.self, from: questionData) {
            loginData = data
        }
        return loginData
    }
    
    static func getProfileDecodedDetail()->EditProfileModel{
        let decoder = JSONDecoder()
        var loginData = EditProfileModel()
        if let questionData = UserDefaults.standard.data(forKey: "getProfileData"),
            let data = try? decoder.decode(EditProfileModel.self, from: questionData) {
            loginData = data
        }
        return loginData
    }
    
    static func getFormattedDate(string: String) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss" // This formate is input formated .
        //2019-02-28 05:06:11
        let formateDate = dateFormatter.date(from:string)!
        dateFormatter.dateFormat = "dd MMM, HH:mm a" // Output Formated
        dateFormatter.amSymbol = "am"
        dateFormatter.pmSymbol = "pm"
        return dateFormatter.string(from: formateDate)
    }
    
}


extension UIApplication {
    class func topViewController(controller: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let navigationController = controller as? UINavigationController {
            return topViewController(controller: navigationController.visibleViewController)
        }
        if let tabController = controller as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return topViewController(controller: selected)
            }
        }
        if let presented = controller?.presentedViewController {
            return topViewController(controller: presented)
        }
        return controller
    }
}





