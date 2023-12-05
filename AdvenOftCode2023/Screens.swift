//
//  Screens.swift
//  AdvenOftCode2023
//
//  Created by Miguel Jasso on 05/12/23.
//

import Foundation
import SwiftUI

enum AllScreens: CaseIterable, Identifiable {
    case day1, day2

    var id: Self { self }

    @ViewBuilder var view: some View {
        switch self {
        case .day1: Day1()
        case .day2: Day2()
        }
    }
    
    var title: String {
        switch self {
        case .day1: "Day 1: Trebuchet?"
        case .day2: "Day 2: Cube Conundrum"
        }
    }
}