//
//  TabBarPresenter.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//  
//

import Foundation

final class HomePresenter: BasePresenter {
    
    // MARK: Properties
    struct InputDependencies {
        weak var coordinator: HomeCoordinatorType?
    }
    
    private let dependencies: InputDependencies
    
    private var ownView: HomeViewType! {
        return view as? HomeViewType
    }
    
    init(dependencies: InputDependencies) {
        self.dependencies = dependencies
        super.init()
    }
}

extension HomePresenter: HomePresenterType {
    // TODO: implement presenter methods
    func bind(withView view: HomeViewType) {
        super.bind(withView: view)
    }
}
