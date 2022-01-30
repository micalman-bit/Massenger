//
//  UILabel + Extension.swift
//  iChatApp
//
//  Created by Andrey Samchenko on 26.01.2022.
//

import UIKit

extension UILabel {
    
    convenience init(text : String, font: UIFont? = .avenir20()) {
        self.init()
        self.text = text
        self.font = font
    }
}
