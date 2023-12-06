//
//  Entities.swift
//  AdvenOftCode2023
//
//  Created by Miguel Jasso on 05/12/23.
//

import Foundation

enum CubeColor: String {
    case green
    case red
    case blue
}

struct Cube {
    var cuantity: Int
    var color: CubeColor
}

struct Turn {
    var cubes: [Cube] = []
}

struct Game {
    
    init(id: Int) {
        self.id = id
    }
    
    var turns: [Turn] = []
    var id: Int
    
    var maxCubeRed: Int = 0
    var maxCubeGreen: Int = 0
    var maxCubeBlue: Int = 0
}
