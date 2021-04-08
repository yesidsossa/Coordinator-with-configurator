//
//  TabBarCoordinator.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//  
//

import Foundation
import UIKit

final class HomeCoordinator: BaseCoordinator {

    func start() -> Presentable {
        
        let moduleInput = HomeConfigurator.ModuleInput(coordinator: self)

        return HomeConfigurator.module(moduleInput: moduleInput)
    }
}

extension HomeCoordinator: HomeCoordinatorType {
    // TODO: implement view output methods
}
