//
//  OrderCoordinator.swift
//  FoodDeliveryApp
//
//  Created by m.kushakov on 05.03.2024.
//

import UIKit

class OrderCoordinator: Coordinator {

    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .systemYellow
        navigationController?.pushViewController(vc, animated: true)
    }

    override func finish() {
       print("OrderCoordinator Finis")
    }
}
