//
//  StackView + Extension.swift
//  iChatApp
//
//  Created by Andrey Samchenko on 26.01.2022.
//

import UIKit

extension UIStackView {
    
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
    }
}
