//
//  Coordinator.swift
//  FoodDeliveryApp
//
//  Created by m.kushakov on 19.02.2024.
//

import UIKit

enum CoordinatorType {
    case app
    case onboarding
    case home
    case order
    case list
    case profile
}

protocol CoordinatorProtocol: AnyObject {
    var type: CoordinatorType { get }
    var childCoordinators: [CoordinatorProtocol] { get set }
    var navigationController: UINavigationController? { get set }
    var finishDelegate: CoordinatorFinishDelegate? { get set }

    func start()
    func finish()
}

extension CoordinatorProtocol {
    func addChildCoordinator(_ childCoordinator: CoordinatorProtocol) {
        childCoordinators.append(childCoordinator)
    }

    func removeChildCoordinator(_ childCoordinator: CoordinatorProtocol) {
        childCoordinators = childCoordinators.filter{ $0 !== childCoordinator }
    }
}

protocol CoordinatorFinishDelegate: AnyObject {
    func coordinatorDidFinish(childCoordinator: CoordinatorProtocol)
}