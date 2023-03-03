//
//  ViewController.swift
//  task1
//
//  Created by Gleb Tregubov on 02.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let squareView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        squareView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(squareView)
        
        NSLayoutConstraint.activate([
            view.leadingAnchor.constraint(equalTo: squareView.leadingAnchor, constant: -100),
            view.centerYAnchor.constraint(equalTo: squareView.centerYAnchor),
            squareView.heightAnchor.constraint(equalToConstant: 100),
            squareView.widthAnchor.constraint(equalToConstant: 100)
        ])
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        squareView.layer.shadowRadius = 20
        squareView.layer.shadowColor = UIColor.black.cgColor
        squareView.layer.shadowOpacity = 0.6
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = squareView.bounds
        gradientLayer.masksToBounds = true
        gradientLayer.cornerRadius = 20
        gradientLayer.colors = [UIColor.systemRed.cgColor, UIColor.systemOrange.cgColor, UIColor.systemYellow.cgColor]
        gradientLayer.locations = [0.15, 0.65, 1]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        squareView.layer.addSublayer(gradientLayer)
        
    }

}

