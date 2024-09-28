//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Anshuman Bhatt on 03/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(alignment: .leading,spacing: 24) {
                    
                    Text("OverView")
                        .font(.title2)
                        .bold()

                }
                .padding()
                .frame(maxWidth: .infinity)
                
            }
            .background(Color.background)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem{
                    Image(systemName: "bell.badge")
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(Color.icon, .primary)
                }
            }
            
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    ContentView()
  
}
