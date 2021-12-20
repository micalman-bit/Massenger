//
//  Extension.swift
//  Massenger
//
//  Created by Andrey Samchenko on 11.12.2021.
//

import Foundation
import UIKit

extension UIView {
    
    public var width: CGFloat{
        return self.frame.width
    }
    
    public var height: CGFloat{
        return self.frame.height
    }

    public var top: CGFloat{
        return self.frame.origin.y
    }

    public var bottom: CGFloat{
        return self.frame.size.height + self.frame.origin.y
    }
    
    public var left: CGFloat{
        return self.frame.origin.x
    }
    
    public var right: CGFloat{
        return self.frame.size.width + self.frame.origin.x
    }

}
