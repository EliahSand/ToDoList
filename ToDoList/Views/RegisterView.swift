//
//  RegisterView.swift
//  ToDoList
//
//  Created by Eliah Sand on 17/04/2025.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack{
            // Header
            HeaderView(title: "Register",
                       subtitle: "Start organizig your tasks",
                       angle: -15,
                       background: Color.orange)
            
            Form{
                TextField("Full Name" , text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                
                TextField("Email Address" , text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                 
                
                
                SecureField("Password" , text : $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create account"
                         , background: .green
                ){
                    //Attempt registration
                    viewModel.register()
                }
                .padding() 
            }
            .offset(y:-50)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
