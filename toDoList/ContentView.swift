//
//  ContentView.swift
//  toDoList
//
//  Created by Tracey Bullington on 5/10/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    @Environment(\.modelContext) var modelContext
    var body: some View {
        VStack {
            HStack {
                Text("to do list")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .foregroundColor(Color(hue: 0.843, saturation: 1.0, brightness: 0.641))
                Spacer()
                Button {
                    withAnimation {
                        self .showNewTask = true
                    }
                }
                label: {
                        Text("+")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(hue: 0.842, saturation: 1.0, brightness: 0.641))
                    }
                }
            .padding()
            Spacer()
            List {
                    ForEach(toDos) { toDoItem in
                        if toDoItem.isImportant == true {
                            Text("‼️" + toDoItem.title)
                        } else {
                            Text(toDoItem.title)
                        }
                    }
                    .onDelete(perform: deleteToDo)
            }
        }
        if showNewTask {
            NewToDoView(showNewTask: $showNewTask, toDoItem: ToDoItem(title: "", isImportant: false))
            //I got an error message telling me to switch the order of the argument in the if statement above so I switched it to make Xcode happy even though that's different from the instructions and I don't understand why
        }
    }
    func deleteToDo(at offsets: IndexSet) {
        for offset in offsets {
            let toDoItem = toDos[offset]
            modelContext.delete(toDoItem)
        }
    }
}

#Preview {
    ContentView()
}
