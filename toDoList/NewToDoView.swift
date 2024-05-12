//
//  NewToDoView.swift
//  toDoList
//
//  Created by Tracey Bullington on 5/10/24.
//

import SwiftUI
import SwiftData

struct NewToDoView: View {
//not sure if the @binding line is supposed to be inside or outside the struct
@Binding var showNewTask: Bool
@Bindable var toDoItem: ToDoItem
@Environment(\.modelContext) var modelContext
    var body: some View {
        VStack {
            Text("Task Title:")
                .font(.title)
                    .fontWeight(.bold)
            TextField("Enter the task description", text: $toDoItem.title, axis: .vertical)
                .padding()
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                      .padding()
            Toggle(isOn: $toDoItem.isImportant) {
                Text("Is it important?")
            }
            .padding()
            Button {
                addToDo()
                self.showNewTask = false
            } label: {
                    Text("Save")
            }
        }
        .padding()
    }
    func addToDo() {
        let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
        modelContext.insert(toDo)
    }
}

//#Preview {
   // NewToDoView()
//}
