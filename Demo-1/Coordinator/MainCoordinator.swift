//
//  MainCoordinator.swift
//  Demo-1
//
//  Created by Abhishek kapoor on 08/10/25.
//

import UIKit
import SwiftUI

class MainCoordinator {
    let navigationController: UINavigationController
    let window: UIWindow
    
    init(window: UIWindow,
         navigationController: UINavigationController = UINavigationController()) {
        self.navigationController = navigationController
        self.window = window
    }
    
    func start() {
        let board = BoardModel()
        let chessViewModel = ChessViewModel(model: board)
        let viewContoller = UIHostingController(rootView: ChessView(viewModel: chessViewModel))
        let navigationContoller = UINavigationController()
        navigationContoller.viewControllers = [viewContoller]
        window.rootViewController = navigationContoller
        window.makeKeyAndVisible()
    }
}
