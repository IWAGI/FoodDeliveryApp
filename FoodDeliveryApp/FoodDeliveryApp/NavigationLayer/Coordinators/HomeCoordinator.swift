//
//  HomeCoordinator.swift
//  FoodDeliveryApp
//
//  Created by m.kushakov on 05.03.2024.
//

import UIKit

class HomeCoordinator: Coordinator {

    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .systemRed
        navigationController?.pushViewController(vc, animated: true)
    }

    override func finish() {
       print("HomeCoordinator Finis")
    }
}
