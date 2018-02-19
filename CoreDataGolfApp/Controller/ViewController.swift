//
//  ViewController.swift
//  CoreDataGolfApp
//
//  Created by Keith Bamford on 13/02/2018.
//  Copyright © 2018 AKA Consultants. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let newLayer = CAGradientLayer()
        newLayer.colors = [UIColor.lightSeaGreen.cgColor, UIColor.cadetBlue2.cgColor]
        newLayer.frame = view.frame
        view.layer.addSublayer(newLayer)
        
        
        
        
    }

    
}

