//
//  OnboardingCoordinator.swift
//  FoodDeliveryApp
//
//  Created by m.kushakov on 03.03.2024.
//

import UIKit

class OnboardingCoordinator: Coordinator {

    override func start() {
        let vc = ViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    override func finish() {
       print("AppCoordinator Finis")
    }
}

