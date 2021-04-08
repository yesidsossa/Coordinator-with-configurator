//
//  BaseViewController.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//

import UIKit
class BaseViewController: UIViewController, BaseView {
    func showError(error: Error) { }
    
    var presenter: BasePresenterProtocol!

    deinit {
        presenter?.unBind()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter?.viewWillAppear()
    }
}
