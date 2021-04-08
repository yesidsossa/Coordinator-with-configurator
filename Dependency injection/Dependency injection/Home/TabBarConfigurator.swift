//
//  TabBarConfigurator.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//  
//

import Foundation
import UIKit

final class TabBarConfigurator {
    static func configure(moduleInput: TabBarConfigurator.ModuleInput) -> UIViewController {
        let viewController = TabBarViewController()

        let dependencies = createDependencies(coordinator: moduleInput.coordinator)

        viewController.presenter = TabBarPresenter(dependencies: dependencies)

        return viewController
    }
    
    private static func createDependencies(
        coordinator: TabBarCoordinatorType) -> TabBarPresenter.InputDependencies {

        let dependencies = TabBarPresenter.InputDependencies(coordinator: coordinator)

        return dependencies
    }
    
    static func module(moduleInput: TabBarConfigurator.ModuleInput) -> UIViewController {
        return TabBarConfigurator.configure(moduleInput: moduleInput)
    }
}
