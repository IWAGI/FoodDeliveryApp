//
//  ProfileCoordinator.swift
//  FoodDeliveryApp
//
//  Created by m.kushakov on 05.03.2024.
//

import UIKit

class ProfileCoordinator: Coordinator {

    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .black
        navigationController?.pushViewController(vc, animated: true)
    }

    override func finish() {
       print("ProfileCoordinator Finis")
    }
}
