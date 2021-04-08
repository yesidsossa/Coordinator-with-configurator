//
//  TabBarPresenter.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//  
//

import Foundation

final class TabBarPresenter: BasePresenter {
    
    // MARK: Properties
    struct InputDependencies {
        weak var coordinator: TabBarCoordinatorType?
    }
    
    private let dependencies: InputDependencies
    
    private var ownView: TabBarViewType! {
        return view as? TabBarViewType
    }
    
    init(dependencies: InputDependencies) {
        self.dependencies = dependencies
        super.init()
    }
}

extension TabBarPresenter: TabBarPresenterType {
    // TODO: implement presenter methods
    func bind(withView view: TabBarViewType) {
        super.bind(withView: view)
    }
}
