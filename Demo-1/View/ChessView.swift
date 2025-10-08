//
//  ChessView.swift
//  Demo-1
//
//  Created by Abhishek kapoor on 08/10/25.
//

import SwiftUI

struct ChessView: View {
    @StateObject var viewModel: ChessViewModel
    var body: some View {
        VStack {
            ForEach(viewModel.model.gride.indices, id: \.self) { i in
                HStack {
                    ForEach(viewModel.model.gride[i].indices, id: \.self) { j in
                        let element = viewModel.model.gride[i][j]
                        ZStack {
                            Color.black
                                .frame(width: 26, height: 26)
                            Color.white
                                .frame(width: 24, height: 24)
                            if element == .black {
                                Text("E")
                            } else if element == .green {
                                Text("C")
                            } else {
                                element.color
                                    .frame(width: 20, height: 20)
                                    .cornerRadius(10)
                            }
                            
                            
                        }
                    }
                }
            }
            .padding(.bottom, 5)
            
            Button("Recalculate") {
                viewModel.onTapRecalculate()
            }

        }
        .onAppear {
            viewModel.calcaluteColor()
        }
        
    }
}
