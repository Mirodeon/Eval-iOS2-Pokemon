//
//  UIColor.swift
//  Eval-iOS-Pokemon
//
//  Created by Student07 on 08/08/2023.
//

import Foundation
import UIKit

extension UIColor {
    class func hexColor(hex: String, alpha: CGFloat = 1.0) -> UIColor {
        var hexValue = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()

        if hexValue.hasPrefix("#") {
            hexValue.remove(at: hexValue.startIndex)
        }

        var rgbValue: UInt64 = 0
        Scanner(string: hexValue).scanHexInt64(&rgbValue)

        let red = CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgbValue & 0x0000FF) / 255.0
        
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    class func customYellow(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 255/255.0, green: 226/255.0, blue: 77/255.0, alpha: alpha)
    }
    
    class func customDarkGray(alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(red: 33/255.0, green: 33/255.0, blue: 33/255.0, alpha: alpha)
    }
}
