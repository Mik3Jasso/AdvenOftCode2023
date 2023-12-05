//
//  ContentView.swift
//  AdvenOftCode2023
//
//  Created by Miguel Jasso on 05/12/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List(AllScreens.allCases, id: \.self) { item in
                NavigationLink(destination: item.view) {
                    Text(item.title)
                }
            }
        }.navigationTitle("Advent Of Code 2023")
    }
}

#Preview {
    ContentView()
}
