//
//  ListCoordinator.swift
//  FoodDeliveryApp
//
//  Created by m.kushakov on 05.03.2024.
//

import UIKit

class ListCoordinator: Coordinator {

    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .systemGreen
        navigationController?.pushViewController(vc, animated: true)
    }

    override func finish() {
       print("ListCoordinator Finis")
    }
}
