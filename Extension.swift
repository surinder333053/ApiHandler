//
//  Extension.swift
//  Tapally
//
//  Created by webastral on 11/28/18.
//  Copyright © 2018 webastral. All rights reserved.
//

import Foundation
import UIKit
import NVActivityIndicatorView


var customAppColor : UIColor = UIColor(red: 126.0/255.0, green: 87.0/255.0, blue: 194.0/255.0, alpha: 1.0)

extension UIViewController:NVActivityIndicatorViewable {
    
    //show screen loader when screen data is loading
    func showactivityIndicator() {
        let size = CGSize(width:50, height: 50)
        startAnimating(size, message: "", messageFont: UIFont.systemFont(ofSize: 18), type: NVActivityIndicatorType.lineSpinFadeLoader, color: customAppColor, padding: nil, displayTimeThreshold: nil, minimumDisplayTime: nil, backgroundColor: UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0), textColor: .black)
    }
    
    //hide screen loader when screen data loading is completed
    func hideactivityIndicator()
    {
        stopAnimating()
    }
}

extension String
{
    func safelyLimitedTo(length n: Int)->String {
        if (self.count <= n) {
            return self
        }
        return String( Array(self).prefix(upTo: n) )
    }
}

extension Data {
    var html2AttributedString: NSAttributedString? {
        do {
            return try NSAttributedString(data: self, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding: String.Encoding.utf8.rawValue], documentAttributes: nil)
        } catch {
            print("error:", error)
            return  nil
        }
    }
    var html2String: String {
        return html2AttributedString?.string ?? ""
    }
}

extension String {
    var html2AttributedString: NSAttributedString? {
        return Data(utf8).html2AttributedString
    }
    var html2String: String {
        return html2AttributedString?.string ?? ""
    }
}

extension UITextView {
    func setHTMLFromString(text: String) {
        let modifiedFont = NSString(format:"<span style=\"font-family: \(self.font!.fontName); font-size: \(self.font!.pointSize)\">%@</span>" as NSString, text)
        
        let attrStr = try! NSAttributedString(
            data: modifiedFont.data(using: String.Encoding.unicode.rawValue, allowLossyConversion: true)!,
            options: [NSAttributedString.DocumentReadingOptionKey.documentType:NSAttributedString.DocumentType.html, NSAttributedString.DocumentReadingOptionKey.characterEncoding: String.Encoding.utf8.rawValue],
            documentAttributes: nil)
        
        self.attributedText = attrStr
    }
}



extension UIImage {
    
    class func imageWithColor(color: UIColor, size: CGSize) -> UIImage {
        print(size.width)
        print(size.height)
        
        let rect: CGRect = CGRect(x: 0, y: 0, width: size.width, height: 49.0)
        print(rect)
        UIGraphicsBeginImageContextWithOptions(size, false, 15)
        color.setFill()
        UIRectFill(rect)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}

extension UIImageView{
    
    func roundShadow(shadowColor:UIColor){
        let shadowPath = UIBezierPath(roundedRect: self.bounds,
                                      cornerRadius: self.layer.cornerRadius)
        self.layer.masksToBounds = false
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowPath = shadowPath.cgPath
    }
    
}

extension UISearchBar{
    
    func setPlaceholder(color:UIColor){
        if let textfield = self.value(forKey: "searchField") as? UITextField {
            //textfield.backgroundColor = UIColor.yellow
            textfield.placeholder = "Search the Contact"
            textfield.font = UIFont(name: "Ubuntu", size: 14)
            textfield.attributedPlaceholder = NSAttributedString(string: textfield.placeholder ?? "", attributes: [NSAttributedStringKey.foregroundColor : color])
            textfield.textColor = color
            if let leftView = textfield.leftView as? UIImageView {
                leftView.image = leftView.image?.withRenderingMode(.alwaysTemplate)
                leftView.tintColor = color
            }
        }
    }
}

extension String {
    public func toPhoneNumber() -> String {
        return self.replacingOccurrences(of: "(\\d{3})(\\d{3})(\\d+)", with: "($1) $2-$3", options: .regularExpression, range: nil)
    }
}

//Check for device or detect screen size of devices
extension UIDevice {
    var iPhoneX: Bool {
        return UIScreen.main.nativeBounds.height == 2436
    }
    var iPhone: Bool {
        return UIDevice.current.userInterfaceIdiom == .phone
    }
    enum ScreenType: String {
        case iPhones_4_4S = "iPhone 4 or iPhone 4S"
        case iPhones_5_5s_5c_SE = "iPhone 5, iPhone 5s, iPhone 5c or iPhone SE"
        case iPhones_6_6s_7_8 = "iPhone 6, iPhone 6S, iPhone 7 or iPhone 8"
        case iPhones_6Plus_6sPlus_7Plus_8Plus = "iPhone 6 Plus, iPhone 6S Plus, iPhone 7 Plus or iPhone 8 Plus"
        case iPhones_X_XS = "iPhone X or iPhone XS"
        case iPhone_XR = "iPhone XR"
        case iPhone_XSMax = "iPhone XS Max"
        case unknown
    }
    var screenType: ScreenType {
        switch UIScreen.main.nativeBounds.height {
        case 960:
            return .iPhones_4_4S
        case 1136:
            return .iPhones_5_5s_5c_SE
        case 1334:
            return .iPhones_6_6s_7_8
        case 1792:
            return .iPhone_XR
        case 1920, 2208:
            return .iPhones_6Plus_6sPlus_7Plus_8Plus
        case 2436:
            return .iPhones_X_XS
        case 2688:
            return .iPhone_XSMax
        default:
            return .unknown
        }
    }
}



