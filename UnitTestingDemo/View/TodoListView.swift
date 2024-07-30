//
//  TodoView.swift
//  UnitTestingDemo
//
//  Created by Etisha Garg on 29/07/24.
//

import SwiftUI

struct TodoView: View {
    @StateObject private var viewModel = TodoViewModel()
    @State private var newTodoTask: String = ""

    var body: some View {
        VStack {
            List(viewModel.tasks) { task in
                Text(task.name)
            }
            HStack {
                TextField("Enter a todo task", text: $newTodoTask).textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    viewModel.addTask(name: newTodoTask)
                    newTodoTask = ""
                }) {
                    Text("Add Task")
                }
            }
            .padding()
        }
    }
}

#Preview {
    TodoView()
}
