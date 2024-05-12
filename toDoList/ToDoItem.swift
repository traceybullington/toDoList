//
//  ToDoItem.swift
//  toDoList
//
//  Created by Tracey Bullington on 5/10/24.
//

import Foundation
import SwiftData

@Model
class ToDoItem {
    var title: String
    var isImportant: Bool
    
    init(title: String, isImportant: Bool) {
        self.title = title
        self.isImportant = isImportant
    }
}
