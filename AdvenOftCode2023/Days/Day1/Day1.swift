//
//  Day1.swift
//  AdvenOftCode2023
//
//  Created by Miguel Jasso on 05/12/23.
//

import SwiftUI


struct Day1: View {
    @ObservedObject var dealer = Day1InfoDealler()
    var body: some View {
        List(dealer.data, id: \.self) { result in
            VStack(alignment: .leading) {
                Text(result).fontWeight(.bold)
                Text(dealer.trebochet(word: result)).fontWeight(.light)
            }
            .padding(.bottom, -1.0)
        }
        Spacer()
        Button(action: {
            dealer.printAllTrebochet()
        }, label: {
            Text("Sum: \(dealer.sum)")
        })
    }
}

#Preview {
    Day1()
}
