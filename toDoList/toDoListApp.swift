//
//  toDoListApp.swift
//  toDoList
//
//  Created by Tracey Bullington on 5/10/24.
//

import SwiftUI
import SwiftData

@main
struct toDoListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
