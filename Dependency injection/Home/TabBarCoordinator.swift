//
//  TabBarCoordinator.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//  
//

import Foundation
import UIKit

final class TabBarCoordinator: BaseCoordinator {

    func start() -> Presentable {
        
        let moduleInput = TabBarConfigurator.ModuleInput(coordinator: self)

        return TabBarConfigurator.module(moduleInput: moduleInput)
    }
}

extension TabBarCoordinator: TabBarCoordinatorType {
    // TODO: implement view output methods
}
