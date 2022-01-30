//
//  SetupProfileViewController.swift
//  iChatApp
//
//  Created by Andrey Samchenko on 28.01.2022.
//

import UIKit

class SetupProfileViewController: UIViewController {
    
    let fillImageView = AddPhotoView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupConstraints()
    }

}


//MARK: - setup Constrints
extension SetupProfileViewController {
    private func setupConstraints() {
        
        fillImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fillImageView)
        
        NSLayoutConstraint.activate([
            fillImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 140),
            fillImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
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
