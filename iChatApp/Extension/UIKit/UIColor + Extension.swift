//
//  UIColor + Extension.swift
//  iChatApp
//
//  Created by Andrey Samchenko on 26.01.2022.
//

import Foundation
import UIKit

extension UIColor {
    
    /// hex color
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")

        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    static func buttonRed() -> UIColor {
        return UIColor(red: 208, green: 2, blue: 27)
    }
    
    static func mainWhite() -> UIColor {
        return UIColor(red: 247, green: 248, blue: 253)
    }
    
    static func buttonDark() -> UIColor {
        return UIColor(red: 51, green: 51, blue: 51)
    }
}
