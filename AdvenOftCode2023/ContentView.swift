//
//  ContentView.swift
//  AdvenOftCode2023
//
//  Created by Miguel Jasso on 05/12/23.
//

import SwiftUI

struct ContentView: View {
    var titles: [String] {
        return [
            "Day 1: Trebuchet?"
        ]
    }
    
    var body: some View {
        NavigationView {
            List(titles, id: \.self) { item in
                NavigationLink(destination: Day1()) {
                    Text(item)
                }
            }
        }.navigationTitle("Advent Of Code 2023")
    }
}

#Preview {
    ContentView()
}
