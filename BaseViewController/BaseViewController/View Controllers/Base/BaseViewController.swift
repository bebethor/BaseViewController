//
//  BaseViewController.swift
//  BaseViewController
//
//  Created by Jose Alberto Ruíz-Carrillo González on 03/03/2020.
//  Copyright © 2020 Jose Alberto Ruíz-Carrillo González. All rights reserved.
//

import UIKit

protocol BaseViewControllerDelegate {
    func actionButtonTapped()
}

class BaseViewController: UIViewController {

    var button = UIButton()
    var backgroundImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        configureBackground()
        configureButton()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    func configureBackground() {
        backgroundImageView.image       = UIImage(named: "base-background")
        backgroundImageView.contentMode = .scaleToFill
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    func configureButton() {
        view.addSubview(button)
        button.addTarget(self, action: #selector(actionButtonPressed), for: .touchUpInside)
        button.backgroundColor = .systemPink
        button.setTitle("Action Button", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 10
        NSLayoutConstraint.activate([
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            button.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    @objc func actionButtonPressed() {
        
    }
}
