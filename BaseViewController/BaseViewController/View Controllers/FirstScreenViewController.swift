//
//  FirstScreenViewController.swift
//  BaseViewController
//
//  Created by Jose Alberto Ruíz-Carrillo González on 03/03/2020.
//  Copyright © 2020 Jose Alberto Ruíz-Carrillo González. All rights reserved.
//

import UIKit

class FirstScreenViewController: UIViewController {
    
    var backgroundImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        setBackground()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    func setBackground() {
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
}
