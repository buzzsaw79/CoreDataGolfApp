//
//  GolferCollectionViewCell.swift
//  CoreDataGolfApp
//
//  Created by Keith Bamford on 19/02/2018.
//  Copyright © 2018 AKA Consultants. All rights reserved.
//

import UIKit

class GolferCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var golferImageView: UIImageView!
    @IBOutlet weak var golferNameLabel: UILabel!
    @IBOutlet weak var golferHandicapLabel: UILabel!
    
   
    
}


class groupsSectionHeaderView: UICollectionReusableView {
    
    @IBOutlet weak var headerTitleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor(named: "AccentColor")
        
        
 
    }
    
}
