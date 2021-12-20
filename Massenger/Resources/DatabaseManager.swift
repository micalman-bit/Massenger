//
//  DatabaseManager.swift
//  Massenger
//
//  Created by Andrey Samchenko on 13.12.2021.
//

import Foundation
import FirebaseDatabase

final class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    private let database = Database.database().reference()
        
}

//MARK: - Account Manager

extension DatabaseManager {
      
    
    public func userExists(with email: String, complition: @escaping((Bool)) -> Void) {
        
        var saveEmail = email.replacingOccurrences(of: ".", with: "-")
        saveEmail = saveEmail.replacingOccurrences(of: "@", with: "-")
        
        database.child(saveEmail).observeSingleEvent(of: .value) { snapshot in
            guard snapshot.value as? String != nil else {
                complition(false)
                return
            }
            
            complition(true)
        }
    }
    
    /// insert new user to database
    public func insertUser(with user: ChatAppUser) {
        database.child(user.saveEmail).setValue([
            "first_name": user.firstName,
            "last_name": user.lastName
        ])
    }

}

struct ChatAppUser {
    let firstName: String
    let lastName: String
    let emailAddress: String
    
    var saveEmail: String {
        var saveEmail = emailAddress.replacingOccurrences(of: ".", with: "-")
        saveEmail = saveEmail.replacingOccurrences(of: "@", with: "-")
        return saveEmail
    }
}
