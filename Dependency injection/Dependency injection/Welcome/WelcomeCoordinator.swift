//
//  WelcomeCoordinator.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//  
//

import Foundation
import UIKit

final class WelcomeCoordinator: BaseCoordinator {
    var loginSuccess: (() -> Void)?

    func start() -> Presentable {
        
        let moduleInput = WelcomeConfigurator.ModuleInput(coordinator: self)

        return WelcomeConfigurator.module(moduleInput: moduleInput)
    }
    
    private func runLoginFlow() -> Presentable {
        let resendInviteCoordinator = fetchOrCreateLoginCoordinator()
        addDependency(resendInviteCoordinator)
        return resendInviteCoordinator.start()
    }
    
    private func fetchOrCreateLoginCoordinator() -> LoginCoordinator {
        return (childCoordinators.first { $0 is LoginCoordinator } as? LoginCoordinator)
            ?? createLoginCoordinator()
    }
    
    private func createLoginCoordinator() -> LoginCoordinator {
        let coordinator = LoginCoordinator(router: router)
        coordinator.loginSuccess = { [unowned self] in
            self.loginSuccess?()
            self.finishFlow?()
        }
        return coordinator
    }
    
}

extension WelcomeCoordinator: WelcomeCoordinatorType {
    func navigateToLogin() {
        router.push(self.runLoginFlow(), transition: nil, animated: true, completion: nil)
    }
}
