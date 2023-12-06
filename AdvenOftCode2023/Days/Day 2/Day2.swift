//
//  Day2.swift
//  AdvenOftCode2023
//
//  Created by Miguel Jasso on 05/12/23.
//

import SwiftUI

struct Day2: View {
    @ObservedObject var manager = Day2Manager()

    var body: some View {
        List(manager.data, id: \.id) { result in
            VStack(alignment: .leading) {
                Text("Game \(result.id)").fontWeight(.bold)
                Text("turns: \(result.turns.count)").fontWeight(.light)

            }
            .padding(.bottom, -1.0)
        }
        Spacer()
        Button(action: {
            manager.countPossibleGames()
        }, label: {
            Text("Sum: \(manager.sum)")
        })
    }
}

#Preview {
    Day2()
}
