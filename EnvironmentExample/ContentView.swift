//
//  ContentView.swift
//  EnvironmentExample
//
//  Created by asdirector on 19.01.2024.
//

import SwiftUI

@MainActor class DataExample: ObservableObject{
    @Published var text = "Counter"
    @Published var counter = 0
}

struct ContentView: View {
    @StateObject var data = DataExample()
    var body: some View {
        VStack {
            TextBlokView()
           SimpleView()
        }
        .environmentObject(data)
    }
}

#Preview {
    ContentView()
}
