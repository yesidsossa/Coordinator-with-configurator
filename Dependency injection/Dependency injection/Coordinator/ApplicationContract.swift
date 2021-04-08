//
//  ApplicationContract.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//

import Foundation

protocol ApplicationViewType: BaseView {}

protocol ApplicationPresenterType: BasePresenterProtocol {
    func bind(withView view: ApplicationViewType)
}

protocol ApplicationCoordinatorType: AnyObject {
    func loginSuccess()
    func loginFailed()
}

protocol CheckAppVersionType: AnyObject {
    func isUpdateRequired() -> Bool
}

public class IsThereNewAppVersionInteractor: CheckAppVersionType {
    func isUpdateRequired() -> Bool {
        false
    }
}






