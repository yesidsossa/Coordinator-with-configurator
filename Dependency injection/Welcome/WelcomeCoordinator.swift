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
}

extension WelcomeCoordinator: WelcomeCoordinatorType {
    // TODO: implement view output methods
}
