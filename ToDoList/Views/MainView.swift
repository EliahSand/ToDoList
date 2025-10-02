//
//  ContentView.swift
//  ToDoList
//
//  Created by Eliah Sand on 17/04/2025.
//
import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            //signed in
            accountView
            
        } else {
            LoginView()
        }
    }
    
    @ViewBuilder
    var accountView: some View {
        
        TabView{
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem{
                    Label("Home", systemImage: "house")
                    
                }
            
            ProfileView()
                .tabItem{
                    Label("Profile", systemImage: "person.circle")
                    
                }
        }
        
    }
}

struct ContentView: PreviewProvider{
    static var previews: some View {
        MainView()
    }
}
