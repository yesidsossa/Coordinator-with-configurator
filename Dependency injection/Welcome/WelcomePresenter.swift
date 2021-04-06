//
//  WelcomePresenter.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//  
//

import Foundation

final class WelcomePresenter: BasePresenter {
    
    // MARK: Properties
    struct InputDependencies {
        weak var coordinator: WelcomeCoordinatorType?
    }
    
    private let dependencies: InputDependencies
    
    private var ownView: WelcomeViewType! {
        return view as? WelcomeViewType
    }
    
    init(dependencies: InputDependencies) {
        self.dependencies = dependencies
        super.init()
    }
}

extension WelcomePresenter: WelcomePresenterType {
    // TODO: implement presenter methods
    func bind(withView view: WelcomeViewType) {
        super.bind(withView: view)
    }
}
