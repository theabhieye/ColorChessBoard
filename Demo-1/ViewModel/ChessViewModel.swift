//
//  ChessViewModel.swift
//  Demo-1
//
//  Created by Abhishek kapoor on 08/10/25.
//

import SwiftUI

class ChessViewModel: ObservableObject {
    @Published var model: BoardModel
    @Published var elephantPoint: (Int, Int) = (0,0)
    @Published var camcelPoint: (Int, Int) = (0,0)
    let service: CalculationService
    
    init(model: BoardModel,
         service: CalculationService = CalculationService()) {
        self.model = model
        self.service = service
    }
    
    func onTapRecalculate() {
        calcaluteColor()
    }
    
    func calcaluteColor() {
        model = BoardModel()
        let result = service.generateColorCodePattern(&model.gride)
        self.elephantPoint = result.elephant
        self.camcelPoint = result.camel
    }
}
