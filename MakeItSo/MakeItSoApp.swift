//
//  MakeItSoApp.swift
//  MakeItSo
//
//  Created by Giuseppe Vacatello on 10/11/23.
//

/*
 https://peterfriese.github.io/MakeItSo/tutorials/makeitso/01-building-a-simple-todo-list-ui
 */
import SwiftUI

@main
struct MakeItSoApp: App {
    var body: some Scene {
        WindowGroup {
            RemindersListView()
        }
    }
}
