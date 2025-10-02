//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Eliah Sand on 17/04/2025.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
