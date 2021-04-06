//
//  ApplicationPresenter.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//

import Foundation

final class ApplicationPresenter: BasePresenter {

    struct InputDependencies {
        weak var coordinator: ApplicationCoordinatorType?
    }

    private let dependencies: InputDependencies

    private var ownView: ApplicationViewType! {
        return view as? ApplicationViewType
    }

    init(dependencies: InputDependencies) {
        self.dependencies = dependencies
        super.init()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        waitAllMandatoryProcessesAreCompleted()
    }

    private func waitAllMandatoryProcessesAreCompleted() {
        _ = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { [self] timer in
            dependencies.coordinator?.loginFailed()
        }
    }

}

extension ApplicationPresenter: ApplicationPresenterType {
    func bind(withView view: ApplicationViewType) {
        super.bind(withView: view)
    }
}
