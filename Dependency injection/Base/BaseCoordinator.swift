//
//  BaseCoordinator.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//
import UIKit
class BaseCoordinator: CoordinatorType {
    var childCoordinators: [CoordinatorType] = []
    var finishFlow: (() -> Void)?
    var router: RouterType

    init(router: RouterType) {
        self.router = router
    }

    func start() {}

    func addDependency(_ coordinator: CoordinatorType) {
        for element in childCoordinators where element === coordinator {
            return
        }
        childCoordinators.append(coordinator)
    }

    func removeDependency(_ coordinator: CoordinatorType?) {
        guard childCoordinators.isEmpty == false, let coordinator = coordinator else { return }

        for (index, element) in childCoordinators.enumerated() where element === coordinator {
            childCoordinators.remove(at: index)
            break
        }
    }

    func toPresent() -> UIViewController {
        let viewController = router.toPresent()
        viewController.modalPresentationStyle = .overFullScreen
        return viewController
    }
}

protocol CoordinatorType: AnyObject {
    var childCoordinators: [CoordinatorType] { get set }
    var router: RouterType { get }
    func start()
}
