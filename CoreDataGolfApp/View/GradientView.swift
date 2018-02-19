//
//  GradientView.swift
//  CoreDataGolfApp
//
//  Created by Keith Bamford on 17/02/2018.
//  Copyright © 2018 AKA Consultants. All rights reserved.
//

import UIKit
@IBDesignable
class GradientView: UIView {
    
    @IBInspectable var firstColor = UIColor.clear {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var secondColor = UIColor.clear {
        didSet {
            updateView()
        }
    }

    override class var layerClass: AnyClass {
        get {
            return CAGradientLayer.self
        }
    }

    func updateView() {
        let layer = self.layer as! CAGradientLayer
        layer.colors = [ firstColor.cgColor, secondColor.cgColor]
    }
}
