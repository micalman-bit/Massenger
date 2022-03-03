//
//  SelfConfigurationCell.swift
//  iChatApp
//
//  Created by Andrey Samchenko on 03.03.2022.
//

import UIKit

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure(with value: MChat)
}
