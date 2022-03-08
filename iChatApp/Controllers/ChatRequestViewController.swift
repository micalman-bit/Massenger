//
//  ChatRequestViewController.swift
//  iChatApp
//
//  Created by Andrey Samchenko on 08.03.2022.
//

import UIKit

class ChatRequestViewController: UIViewController {
    
    let conteinerView = UIView()
    
    let imageView = UIImageView(image: UIImage(named: "avatar"), contentMode: .scaleAspectFill)
    let nameLabel = UILabel(text: "Petter Bree", font: .systemFont(ofSize: 20, weight: .light))
    let aboutLabel = UILabel(text: "You have oppativity to start a new chat", font: .systemFont(ofSize: 16, weight: .light))

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }
    
}

extension ChatRequestViewController {
    private func setupConstraints() {
        
    }
}

// MARK: - SwiftUI
import SwiftUI

struct ChatRequestVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let ChatVC = ChatRequestViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<ChatRequestVCProvider.ContainerView>) -> ChatRequestViewController {
            return ChatVC
        }
        
        func updateUIViewController(_ uiViewController: ChatRequestVCProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ChatRequestVCProvider.ContainerView>) {
            
        }
    }
}
 
