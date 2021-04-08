//
//  RouterType.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//

import UIKit

protocol RouterType: AnyObject, Presentable {
    var navigationController: UINavigationController { get }
    var rootViewController: UIViewController? { get }
    
    func present(_ module: Presentable)
    func present(_ module: Presentable, animated: Bool)
    
    func push(
        _ module: Presentable,
          transition: UIViewControllerAnimatedTransitioning?,
          animated: Bool,
          completion: (() -> Void)?)
    
    func popModule()
    func popModule(transition: UIViewControllerAnimatedTransitioning?,  animated: Bool)
    
    func dismissModule(animated: Bool, completion: (() -> Void)?)
    
    func setRootModule(_ module: Presentable)
    func setRootModule(_ module: Presentable, hideBar: Bool)
    
    func popToRootModule(animated: Bool)
    func hideNavigationBar()
    func showNavigationBar()
}
