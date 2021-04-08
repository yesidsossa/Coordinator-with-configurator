//
//  TabBarView.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 7/04/21.
//

import Foundation
import UIKit

final class HomeView: UIView {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Congratulations, now you are at home!"
        return label
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
        backgroundColor = UIColor.blue
        addSubview(titleLabel)
        setupLoginButton()
    }
    
    func setupLoginButton() {
        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
}
