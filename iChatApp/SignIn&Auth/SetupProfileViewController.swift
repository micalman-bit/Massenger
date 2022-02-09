//
//  SetupProfileViewController.swift
//  iChatApp
//
//  Created by Andrey Samchenko on 28.01.2022.
//

import UIKit

class SetupProfileViewController: UIViewController {
    
    let welcomeLabel = UILabel(text: "Set Up profile!", font: .avenir26())
    
    let fullNameLabel = UILabel(text: "Login with")
    let aboutLabel = UILabel(text: "About me")
    let sexLabel = UILabel(text: "Sex")
    
    let fullNameTextField = OneLineTextField(font: .avenir20())
    let aboutTextField = OneLineTextField(font: .avenir20())
    let sexSegmentedControll = UISegmentedControl(first: "Male", second: "Femail")
    
    let goToChatsButton = UIButton(title: "Go to chats!", titleColor: .white, cornerRadius: 4, backgroundColor: .buttonDark())
    
    let fullImageView = AddPhotoView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupConstraints()
    }

}


//MARK: - setup Constrints
extension SetupProfileViewController {
    private func setupConstraints() {
        
        let fullNameStakView = UIStackView(arrangedSubviews:
                                            [fullNameLabel,
                                             fullNameTextField],
                                           axis: .vertical,
                                           spacing: 0)
        
        let aboutMeStakView = UIStackView(arrangedSubviews:
                                            [aboutLabel,
                                             aboutTextField],
                                          axis: .vertical,
                                          spacing: 0)
        
        let sexStakView = UIStackView(arrangedSubviews:
                                        [sexLabel,
                                         sexSegmentedControll],
                                      axis: .vertical,
                                      spacing: 12)
        
        goToChatsButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        let stackView = UIStackView(arrangedSubviews:
                                        [fullNameStakView,
                                         aboutMeStakView,
                                         sexStakView,
                                         goToChatsButton],
                                    axis: .vertical,
                                    spacing: 40)
        
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        fullImageView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(welcomeLabel)
        view.addSubview(fullImageView)
        view.addSubview(stackView)
                
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 140),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            fullImageView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 40),
            fullImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: fullImageView.bottomAnchor, constant: 40),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])

    }
}

//MARK: - SwiftUI
import SwiftUI

struct SetupProfileVCProvaider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let SetUpProfileVC = SetupProfileViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<SetupProfileVCProvaider.ContainerView>) -> SetupProfileViewController {
            return SetUpProfileVC
        }
        
        func updateUIViewController(_ uiViewController: SetupProfileVCProvaider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<SetupProfileVCProvaider.ContainerView>) {
        }
    }
}
