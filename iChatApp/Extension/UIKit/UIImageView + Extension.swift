//
//  UIImageView + Extension.swift
//  iChatApp
//
//  Created by Andrey Samchenko on 26.01.2022.
//

import UIKit

extension UIImageView {
    
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        self.image = image
        self.contentMode = contentMode
    }
}
