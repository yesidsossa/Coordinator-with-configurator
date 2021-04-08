//
//  ApplicationConfigurator.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//

import UIKit

final public class ApplicationConfigurator {

    static func configure(moduleInput: ApplicationConfigurator.ModuleInput) -> UIViewController {
        let viewController = ApplicationViewController()
        viewController.modalPresentationStyle = .fullScreen
        viewController.modalPresentationCapturesStatusBarAppearance = true

        let dependencies = createDependencies(
            coordinator: moduleInput.coordinator,
            isThereNewAppVersionInteractor: moduleInput.isThereNewAppVersionInteractor
        )

        viewController.presenter = ApplicationPresenter(dependencies: dependencies)

        return viewController
    }

    private static func createDependencies(
        coordinator: ApplicationCoordinatorType ,
        isThereNewAppVersionInteractor: CheckAppVersionType) -> ApplicationPresenter.InputDependencies {

        let dependencies = ApplicationPresenter.InputDependencies(
        coordinator: coordinator,
        isThereNewAppVersionInteractor: isThereNewAppVersionInteractor
        )

        return dependencies
    }

    static func module(moduleInput: ApplicationConfigurator.ModuleInput) -> (UIViewController) {
        return configure(moduleInput: moduleInput)
    }
}
