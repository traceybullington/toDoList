//
//  ContentView.swift
//  toDoList
//
//  Created by Tracey Bullington on 5/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
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
        }
        if showNewTask {
            NewToDoView()
        }
    }
}

#Preview {
    ContentView()
}
