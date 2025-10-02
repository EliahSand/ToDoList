//
//  User.swift
//  ToDoList
//
//  Created by Eliah Sand on 17/04/2025.
//

import Foundation


struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
