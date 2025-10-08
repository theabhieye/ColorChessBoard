//
//  ColorCode.swift
//  Demo-1
//
//  Created by Abhishek kapoor on 08/10/25.
//
import Foundation
import SwiftUI

enum ColorCode: String {
    case yellow
    case red
    case blue
    case black // elephant
    case green // camel
    case undefine
    
    var color: Color {
        switch self {
        case .yellow:
                .yellow
        case .red:
                .red
        case .blue:
                .blue
        case .black:
                .black
        case .green:
                .green
        case .undefine:
                .white
        }
    }
    
}

struct BoardModel: Identifiable {
    var id = UUID()
    var gride: [[ColorCode]]
    
    init() {
        self.gride = Array(repeating: Array(repeating: ColorCode.undefine, count: 8), count: 8)
    }
    
}
 
