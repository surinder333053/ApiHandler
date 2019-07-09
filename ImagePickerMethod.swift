//
//  ImagePicker.swift
//  Tapally
//
//  Created by webastral on 11/29/18.
//  Copyright © 2018 webastral. All rights reserved.
//

import UIKit
import Photos

protocol ImagePickerDelegate {
    func imageShown(image:UIImage,imageData:Data)
}

class ImagePickerMethod: NSObject,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    
    var imagePicker : UIImagePickerController? = nil
    var topController = UIViewController()
    var imgDelegate : ImagePickerDelegate?
    
    func imagePickerDelegate(topview:UIViewController){
        topController = topview
        imagePicker = UIImagePickerController()
        imagePicker?.delegate = self
    }
    
    //MARK: Image pickerView
    @objc func handleTapGesture(){
        let alert = UIAlertController(title: "Choose An Image for your post", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        let cameraAction = UIAlertAction(title: "Camera", style: UIAlertActionStyle.default,handler: { (action) in
            self.ImagePick(camera: true)
        })
        let gallaryAction = UIAlertAction(title: "Gallery", style: UIAlertActionStyle.default,handler: { (action) in
            self.ImagePick(camera: false)
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel,handler: { (action) in
        })
        alert.addAction(cameraAction)
        alert.addAction(gallaryAction)
        alert.addAction(cancelAction)
        topController.present(alert, animated: true, completion: nil)
    }
    
    //MARK: open gallery or camera
    
    func ImagePick(camera:Bool)  {
        
        
        let photos = PHPhotoLibrary.authorizationStatus()
        if photos == .notDetermined {
            PHPhotoLibrary.requestAuthorization({status in
                if status == .authorized{
                }
            })
        }
        
        if camera{
            if UIImagePickerController.isSourceTypeAvailable(.camera) {
                let imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.sourceType = .camera;
                imagePicker.allowsEditing = false
                topController.present(imagePicker, animated: true, completion: nil)
            }
        }else{
            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
                let imagePicker = UIImagePickerController()
                imagePicker.delegate = self
                imagePicker.sourceType = .photoLibrary;
                imagePicker.allowsEditing = true
                topController.present(imagePicker, animated: true, completion: nil)
            }
        }
    }
    
    //MARK: Pickerview Didfinish
    public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let imageURL = info[UIImagePickerControllerReferenceURL] as? URL {
            let result = PHAsset.fetchAssets(withALAssetURLs: [imageURL], options: nil)
            _ = result.firstObject
           // imgName = asset?.value(forKey: "filename") as? String ?? ""
        }else{
           // imgName = "image.png"
        }
        
        var image = UIImage()
        
        if let img = info[UIImagePickerControllerEditedImage] as? UIImage
        {
            image = img
            
        }
        else if let img = info[UIImagePickerControllerOriginalImage] as? UIImage
        {
            image = img
        }
       // let image = info[UIImagePickerControllerOriginalImage] as! UIImage
       let imageData = UIImageJPEGRepresentation(image, 0.1)
        imgDelegate?.imageShown(image: image, imageData: imageData ?? Data())
        topController.dismiss(animated:true, completion: nil)
    }
    

}
