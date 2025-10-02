//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Eliah Sand on 17/04/2025.
//

import Foundation

/// viewmodel for list of items views
/// primary tab
class ToDoListViewViewModel : ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
}
