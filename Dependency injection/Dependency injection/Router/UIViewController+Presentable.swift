//
//  UIViewController+Presentable.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//

import UIKit

extension UIViewController: Presentable {
    func toPresent() -> UIViewController {
        return self
    }
}
