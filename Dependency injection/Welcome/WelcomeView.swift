//
//  WelcomeView.swift
//  Dependency injection
//
//  Created by Ysid Hernandez on 5/04/21.
//

import Foundation
import UIKit

final class WelcomeView: UIView {
    
    lazy var activityIndicator: UIActivityIndicatorView = {
        let activity = UIActivityIndicatorView(style: .gray)
        activity.hidesWhenStopped = true
        activity.isHidden = true
        activity.translatesAutoresizingMaskIntoConstraints = false
        return activity
    }()

    lazy var logoImageView: UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "demo_icon"))
        imgView.contentMode = .scaleAspectFit
        imgView.translatesAutoresizingMaskIntoConstraints = false
        return imgView
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
        backgroundColor = UIColor.red
        addSubview(logoImageView)
        addSubview(activityIndicator)
        setupLogoImageView()
        setupActivityIndicator()
    }
    
    func setupLogoImageView() {
        logoImageView.heightAnchor.constraint(equalToConstant: 107).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 205).isActive = true
        logoImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
    
    func setupActivityIndicator() {
        activityIndicator.centerXAnchor.constraint(equalTo: logoImageView.centerXAnchor).isActive = true
        activityIndicator.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 40.0).isActive = true
    }
    
    func startActivity() {
        activityIndicator.startAnimating()
        activityIndicator.isHidden = false
    }
    
    func stopActivity() {
        activityIndicator.stopAnimating()
    }
}
