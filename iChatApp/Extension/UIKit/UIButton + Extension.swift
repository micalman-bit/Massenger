//
//  UIButton + Extension.swift
//  iChatApp
//
//  Created by Andrey Samchenko on 26.01.2022.
//

import Foundation
import UIKit

extension UIButton {
    
    convenience init(title: String,
                     titleColor: UIColor,
                     font: UIFont? = .avenir20(),
                     isShadow: Bool = false,
                     cornerRadius: CGFloat = 4,
                     backgroundColor: UIColor) {
        self.init(type: .system)
        
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.titleLabel?.font = font
        self.layer.cornerRadius = cornerRadius
        
        if isShadow {
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.cornerRadius = 4
            self.layer.shadowOpacity = 0.2
            self.layer.shadowOffset = CGSize(width: 0, height: 4)
        }
    }
}
