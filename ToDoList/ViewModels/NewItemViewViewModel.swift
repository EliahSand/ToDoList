//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by Eliah Sand on 17/04/2025.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class NewItemViewViewModel : ObservableObject {
    
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    init() {}
    
    func save(){
        guard canSave else {
            return
        }
        
        //get current user id
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        // Create a model
        let newId = UUID().uuidString
        let newItem = ToDoListItem(id: newId
                                   , title: title
                                   , dueDate: dueDate.timeIntervalSince1970
                                   , createdDate: dueDate.timeIntervalSince1970
                                   , isDone: false
        )
        
        
        //Save the model
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todoItems")
            .document(newId)
            .setData(newItem.asDictionary())
        // using the dictionary to convert the model to a dictionary which we can write to the database
         
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
            
        }
        
        return true
    }
}

