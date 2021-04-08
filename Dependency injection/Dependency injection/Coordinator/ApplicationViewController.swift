//
//  ApplicationViewController.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//

import UIKit

final class ApplicationViewController: BaseViewController {
    
    private let applicationView = ApplicationView()

    private var ownPresenter: ApplicationPresenterType! {
        return self.presenter as? ApplicationPresenterType
    }
    
    override func loadView() {
        super.loadView()
        setupView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        ownPresenter.bind(withView: self)
        setLoadingIndicator(active: true)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        setLoadingIndicator(active: false)
    }
    
    private func setupView() {
        view.addSubview(applicationView)
        applicationView.anchor(
            top: view.topAnchor,
            left: view.leftAnchor,
            bottom: view.bottomAnchor,
            right: view.rightAnchor
        )
    }
    
    private func setLoadingIndicator(active: Bool) {
        if active {
            applicationView.startActivity()
        } else {
            applicationView.stopActivity()
        }
    }
}

public extension UIView {
    func anchor(top: NSLayoutYAxisAnchor?,
                left: NSLayoutXAxisAnchor?,
                bottom: NSLayoutYAxisAnchor?,
                right: NSLayoutXAxisAnchor?,
                paddingTop: CGFloat = 0,
                paddingLeft: CGFloat = 0,
                paddingBottom: CGFloat = 0,
                paddingRight: CGFloat = 0,
                width: CGFloat = 0,
                height: CGFloat = 0) {

        translatesAutoresizingMaskIntoConstraints = false

        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }

        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }

        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }

        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }

        if width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }

        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
}
