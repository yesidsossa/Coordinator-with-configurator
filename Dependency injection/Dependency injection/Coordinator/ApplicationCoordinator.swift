//
//  ApplicationCoordinator.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//

import UIKit
final class ApplicationCoordinator: BaseCoordinator {
    private let interactorModule: IsThereNewAppVersionInteractor
    
    public init(router: RouterType, interactorModule: IsThereNewAppVersionInteractor) {
        self.interactorModule = interactorModule
        super.init(router: router)
    }

    override public func start() {
        let moduleInput = ApplicationConfigurator.ModuleInput(
            coordinator: self,
            isThereNewAppVersionInteractor: interactorModule
        )

        let module = ApplicationConfigurator.module(moduleInput: moduleInput)
        router.setRootModule(module, hideBar: true)
    }

    private func runWelcomeFlow() -> Presentable {
        let welcomeCoordinator = fetchOrCreateWelcomeCoordinator()
        addDependency(welcomeCoordinator)
        return welcomeCoordinator.start()
    }

    private func fetchOrCreateWelcomeCoordinator() -> WelcomeCoordinator {
        return (childCoordinators.first { $0 is WelcomeCoordinator } as? WelcomeCoordinator)
            ?? createWelcomeCoordinator()
    }

    private func createWelcomeCoordinator() -> WelcomeCoordinator {
        let coordinator = WelcomeCoordinator(router: router)

        coordinator.finishFlow = { [unowned self, weak coordinator] in
            self.removeDependency(coordinator)
        }
        coordinator.loginSuccess = { [unowned self] in
            self.router.setRootModule(self.runTabBarFlow(), hideBar: false)
        }

        return coordinator
    }

    private func runTabBarFlow() -> Presentable {
        let tabBarCoordinator = fetchOrCreateTabBarCoordinator()
        addDependency(tabBarCoordinator)
        return tabBarCoordinator.start()
    }

    private func fetchOrCreateTabBarCoordinator() -> TabBarCoordinator {
        return (childCoordinators.first { $0 is TabBarCoordinator } as? TabBarCoordinator)
            ?? createTabBarCoordinator()
    }

    private func createTabBarCoordinator() -> TabBarCoordinator {
        let coordinator = TabBarCoordinator(router: router)
        
        coordinator.finishFlow = { [unowned self, weak coordinator] in
            self.removeDependency(coordinator)
        }
        return coordinator
    }

    @objc func handleLogout() {
        router.setRootModule(runWelcomeFlow(), hideBar: false)
    }
}

extension ApplicationCoordinator: ApplicationCoordinatorType {
    func loginFailed() {
        self.router.setRootModule(self.runWelcomeFlow(), hideBar: false)
    }

    func loginSuccess() {
        self.router.setRootModule(self.runTabBarFlow(), hideBar: false)
    }
}

