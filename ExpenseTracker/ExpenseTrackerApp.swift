//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Anshuman Bhatt on 03/08/24.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    @StateObject var transcationListVM = TranscationListViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transcationListVM)
        }
    }
}
