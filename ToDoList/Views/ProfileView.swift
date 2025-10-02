//
//  ProfileView.swift
//  ToDoList
//
//  Created by Eliah Sand on 17/04/2025.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    init() {
        
    }
    
    var body: some View {
        NavigationView{
            VStack{
                
            }
            .navigationTitle("Profile view")
        }
    }
}

#Preview {
    ProfileView()
}
