//
//  LoginView.swift
//  ToDoList
//
//  Created by Eliah Sand on 17/04/2025.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "To Do List", subtitle: "Skjerpings", angle: 15, background: Color.pink)
                
                
                //Login form
                Form{
                    
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                            .font(.caption)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    
                    
                    TLButton(title: "Log in"
                             , background: .blue
                    ){
                        //attempt log in
                        viewModel.login()
                    }
                    
                    .padding()
                    
                }
                
                .offset(y:-50)
                
                //Create Account
                VStack{
                    Text("New around here?")
                        
                    NavigationLink("Create an account", destination: RegisterView())
                    }
                }
                Spacer()
            }
        }
}

#Preview {
    LoginView()
}
