//
//  BasePresenter.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//
import UIKit

class BasePresenter: NSObject, BasePresenterProtocol {
    
    weak var view: BaseView?
    
    weak var errorHandler: ErrorHandlerProtocol?


    func bind(withView view: BaseView) {
        self.view = view
        self.errorHandler = view
    }

    func unBind() {
        self.view = nil
        self.errorHandler = nil
    }
    
    func viewDidLoad() {
        // This method should be overrided
    }
    
    func viewWillAppear() {
        // This method should be overrided
    }
}
