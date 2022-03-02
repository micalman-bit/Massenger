//
//  ActiveChatCell.swift
//  iChatApp
//
//  Created by Andrey Samchenko on 01.03.2022.
//

import Foundation
import UIKit

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure(with value: MChat)
}

class ActiveChatCell: UICollectionViewCell, SelfConfiguringCell {
    
    static var reuseId: String = "ActiveChatCell"
    
    let friendImageView = UIImageView()
    let friendName = UILabel(text: "User Name", font: .laoSangamMN20())
    let lastMassage = UILabel(text: "How are you", font: .laoSangamMN18())
    let gradientView = UIView()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .brown
        setupConstraints()
    }
    
    func configure(with value: MChat) {
        print("123")
    }
    
    private func setupConstraints() {
        friendImageView.translatesAutoresizingMaskIntoConstraints = false
        gradientView.translatesAutoresizingMaskIntoConstraints = false
        friendName.translatesAutoresizingMaskIntoConstraints = false
        lastMassage.translatesAutoresizingMaskIntoConstraints = false
        
        friendImageView.backgroundColor = .orange
        addSubview(friendImageView)
        
        NSLayoutConstraint.activate([
            friendImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            friendImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            friendName.heightAnchor.constraint(equalToConstant: 78),
            friendName.widthAnchor.constraint(equalToConstant: 78)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: - SwiftUI

import SwiftUI

struct ActiveChatProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }

    struct ContainerView: UIViewControllerRepresentable {

        let TabBarVC = MainTabBarController()

        func makeUIViewController(context: UIViewControllerRepresentableContext<ActiveChatProvider.ContainerView>) -> MainTabBarController {
            return TabBarVC
        }

        func updateUIViewController(_ uiViewController: ActiveChatProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ActiveChatProvider.ContainerView>) {
        }
    }
}
