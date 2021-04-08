//
//  BaseView.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//

import Foundation

protocol BaseView: ErrorHandlerProtocol {}

protocol ErrorHandlerProtocol: class {

    func showError(error: Error)
}

protocol BasePresenterProtocol {

    var view: BaseView? { get set }

    func bind(withView view: BaseView)

    func unBind()
    
    func viewDidLoad()
    func viewWillAppear()
}
