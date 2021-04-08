//
//  LoginView.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 7/04/21.
//

import Foundation
import UIKit

final class LoginView: UIView {
    var pressedLoginButton: (() -> Void)?
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Make login", for: .normal)
        button.addTarget(nil, action: #selector(addButtonDidTapped(sender:)), for: .touchUpInside)
        return button
    }()

    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    func setupView() {
        backgroundColor = UIColor.purple
        addSubview(loginButton)
        setupLoginButton()
    }
    
    func setupLoginButton() {
        loginButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
    
    @objc private func addButtonDidTapped(sender: UIButton) {
        pressedLoginButton?()
    }

}
