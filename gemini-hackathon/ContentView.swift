//
//  ContentView.swift
//  gemini-hackathon
//
//  Created by gulkaran s on 2024-04-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "gamecontroller.fill")
                .foregroundColor(Color(.pink))
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello world!")
        }
        .padding()
        BottomNavBar()
    }
}

#Preview {
    ContentView()
}
