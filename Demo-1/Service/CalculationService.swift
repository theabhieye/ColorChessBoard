//
//  CalculationService.swift
//  Demo-1
//
//  Created by Abhishek kapoor on 08/10/25.
//

import Foundation

protocol CalculationServiceProtocol {
    func generateColorCodePattern(_ gride: inout [[ColorCode]]) ->
        (
            elephant: (Int, Int),
            camel: (Int, Int)
        )
}

class CalculationService:  CalculationServiceProtocol{
    func generateColorCodePattern(_ gride: inout [[ColorCode]]) ->(
            elephant: (Int, Int),
            camel: (Int, Int)
        ) {
        func generateRandonCooridinate() -> (Int, Int) {
            (Int.random(in: 0..<8), Int.random(in: 0..<8))
        }
        
        func fillElephant(at coordinate: (Int, Int)) {
            let (x, y) = coordinate

            for j in 0..<gride[x].count {
                gride[x][j] = .yellow
            }

            for i in 0..<gride.count {
                if i != x {
                    gride[i][y] = .yellow
                }
            }
        }
        
        func fillCamel(at coordinate: (Int, Int)) {
            let (x, y) = coordinate
            var i = x, j = y
            while i >= 0  && j >= 0 {
                gride[i][j] = getColorForCamel(at: (i, j))
                i -= 1
                j -= 1
            }
            
            i = x
            j = y
            while i < 8  && j < 8 {
                gride[i][j] = getColorForCamel(at: (i, j))
                i += 1
                j += 1
            }
            
        }
        
        func getColorForCamel(at coordinate: (Int, Int)) -> ColorCode {
            let (x, y) = coordinate
            return gride[x][y] == ColorCode.yellow ?  ColorCode.red : ColorCode.blue
        }
        
        
        var elephantCooridinate = generateRandonCooridinate()
        let camcelCooridainate = generateRandonCooridinate()
        
        if elephantCooridinate == camcelCooridainate {
            elephantCooridinate = generateRandonCooridinate()
        }
        fillElephant(at: elephantCooridinate)
        fillCamel(at: camcelCooridainate)
            
        gride[elephantCooridinate.0][elephantCooridinate.1] = ColorCode.black
        gride[camcelCooridainate.0][camcelCooridainate.1] = ColorCode.green
        return (elephantCooridinate, camcelCooridainate)
    }
   
    
}
