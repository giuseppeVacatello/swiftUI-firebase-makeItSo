//
//  ContentView.swift
//  MakeItSo
//
//  Created by Giuseppe Vacatello on 10/11/23.
//

import SwiftUI

struct RemindersListView: View {
    @StateObject
    private var viewModel = RemindersListViewModel()
    
    @State private var isAddReminderDialogPresented = false
    
    private func presentAddReminderView() {
        isAddReminderDialogPresented.toggle()
    }
    
    var body: some View {
        
        List($viewModel.reminders) { $reminder in
            HStack {
                Image(systemName: reminder.isCompleted ?
                      "largecircle.fill.circle" : "circle")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .onTapGesture {
                        viewModel.toggleCompleted(reminder)
                    }
                Text(reminder.title)
            }
        }
        .toolbar {
            ToolbarItemGroup(placement: .bottomBar) {
                Button(action: presentAddReminderView, label: {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                        Text("New Reminder")
                    }
                })
                Spacer()
            }
        }
        .sheet(isPresented: $isAddReminderDialogPresented, content: {
            AddReminderView { reminder in
                viewModel.addReminder(reminder)
            }
        })
    }
}

#Preview {
    
    NavigationStack {
        RemindersListView()
            .navigationTitle("Reminders")
    }
}
