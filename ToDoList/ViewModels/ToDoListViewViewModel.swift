//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Eliah Sand on 17/04/2025.
//
import FirebaseFirestore
import Foundation

/// viewmodel for list of items views
/// primary tab
class ToDoListViewViewModel : ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId : String
    
    init(userId : String ) {
        self.userId = userId
    }
    
    // command option backslash (´)
    /// Delete to do list item
    /// - Parameter id: item id to delete 
    func delete(id : String ){
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todoItems")
            .document(id)
            .delete()
    }
}
