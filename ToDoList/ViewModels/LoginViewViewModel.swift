//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Eliah Sand on 17/04/2025.
//

import FirebaseAuth

import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){}
    
    func login(){
        guard validate() else {
            return
        }
        
        print("Logging in...")
        //try log in
        Auth.auth().signIn(withEmail: email, password: password)
        
    }
    
    private func validate() -> Bool{
        
        errorMessage = ""
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Please enter email and password"
            return false
        }
        
        //validation for @ and .com
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email"
            return false
        }
        
        return true
        
    }
}
