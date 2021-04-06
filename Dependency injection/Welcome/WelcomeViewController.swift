//
//  WelcomeViewController.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//  
//

import Foundation
import UIKit

final class WelcomeViewController: BaseViewController {

    private let welcomeView = WelcomeView()

    private var ownPresenter: WelcomePresenterType!{
        return presenter as? WelcomePresenterType
    }
    
    override func loadView() {
        super.loadView()
        setupView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func setupView() {
        view.addSubview(welcomeView)
        welcomeView.anchor(
            top: view.topAnchor,
            left: view.leftAnchor,
            bottom: view.bottomAnchor,
            right: view.rightAnchor
        )
    }
}

extension WelcomeViewController: WelcomeViewType {
    // TODO: implement view output methods
}
