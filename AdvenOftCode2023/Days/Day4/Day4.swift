//
//  Day4.swift
//  AdvenOftCode2023
//
//  Created by Miguel Jasso on 06/12/23.
//

import SwiftUI

struct Day4: View {
    
    @ObservedObject var manager = Day4Manager()
    
    var body: some View {
        List(manager.data, id: \.id) { result in
            VStack(alignment: .leading) {
                Text("Game \(result.id)").fontWeight(.bold)
            }
            .padding(.bottom, -1.0)
        }
        Spacer()
        Button(action: {
            manager.checkIfWinning()
        }, label: {
            Text("Sum: \(manager.sum)")
        })
    }
}

#Preview {
    Day4()
}
