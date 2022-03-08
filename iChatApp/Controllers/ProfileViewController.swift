//
//  ProfileViewController.swift
//  iChatApp
//
//  Created by Andrey Samchenko on 04.03.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    let conteinerView = UIView()
    
    let imageView = UIImageView(image: UIImage(named: "avatar"), contentMode: .scaleAspectFill)
    let nameLabel = UILabel(text: "Petter Bree", font: .systemFont(ofSize: 20, weight: .light))
    let aboutLabel = UILabel(text: "You have oppativity the best man of the world", font: .systemFont(ofSize: 16, weight: .light))
    
    let myTextField = InsertableTextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .mainWhite()
        cunstomizeElements()
        setupConstraints()
    }
    
    private func cunstomizeElements() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        aboutLabel.translatesAutoresizingMaskIntoConstraints = false
        aboutLabel.numberOfLines = 0
        
        myTextField.translatesAutoresizingMaskIntoConstraints = false
//        myTextField.borderStyle = .roundedRect
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        conteinerView.translatesAutoresizingMaskIntoConstraints = false
        conteinerView.backgroundColor = .mainWhite()
        conteinerView.layer.cornerRadius = 30
        
        if let button = myTextField.rightView as? UIButton {
            button.addTarget(self,
                             action: #selector(sendMessage),
                             for: .touchUpInside)
        }
    }
    
    @objc func sendMessage() {
        print(#function)
    }
}

extension ProfileViewController {
    private func setupConstraints() {
        view.addSubview(imageView)
        view.addSubview(conteinerView)
        conteinerView.addSubview(nameLabel)
        conteinerView.addSubview(aboutLabel)
        conteinerView.addSubview(myTextField)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: conteinerView.topAnchor, constant: 30)
        ])
        
        NSLayoutConstraint.activate([
            conteinerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            conteinerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            conteinerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            conteinerView.heightAnchor.constraint(equalToConstant: 206)
        ])
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: conteinerView.topAnchor, constant: 35),
            nameLabel.leadingAnchor.constraint(equalTo: conteinerView.leadingAnchor, constant: 24),
            nameLabel.trailingAnchor.constraint(equalTo: conteinerView.trailingAnchor, constant: -24)
        ])
        
        NSLayoutConstraint.activate([
            aboutLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            aboutLabel.leadingAnchor.constraint(equalTo: conteinerView.leadingAnchor, constant: 24),
            aboutLabel.trailingAnchor.constraint(equalTo: conteinerView.trailingAnchor, constant: -24)
        ])
        
        NSLayoutConstraint.activate([
            myTextField.topAnchor.constraint(equalTo: aboutLabel.bottomAnchor, constant: 8),
            myTextField.leadingAnchor.constraint(equalTo: conteinerView.leadingAnchor, constant: 24),
            myTextField.trailingAnchor.constraint(equalTo: conteinerView.trailingAnchor, constant: -24),
            myTextField.heightAnchor.constraint(equalToConstant: 48)
        ])
    }
}

// MARK: - SwiftUI
import SwiftUI

struct ProfileVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let ProfileVC = ProfileViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<ProfileVCProvider.ContainerView>) -> ProfileViewController {
            return ProfileVC
        }
        
        func updateUIViewController(_ uiViewController: ProfileVCProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ProfileVCProvider.ContainerView>) {
            
        }
    }
}
