//
//  GroupsViewController.swift
//  CoreDataGolfApp
//
//  Created by Keith Bamford on 19/02/2018.
//  Copyright © 2018 AKA Consultants. All rights reserved.
//

import UIKit

class GroupsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
        //MARK: - Properties and Outlets
    var playersArray: [Golfer]?
    var todaysTournee: Tournee?
    
    @IBOutlet weak var golferCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        golferCollectionView.delegate = self
        golferCollectionView.dataSource = self
        

        let golfers = Golfer.golferDictionary
        print(golfers)
        
        for golfer in golfers {
            
            let golfer = Golfer.golferFetchRequest()
            
            
        }
        
        
        
    }
        //MARK: - CollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("NUM CALLED")
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "golferCell", for: indexPath) as! GolferCollectionViewCell
        // Configure Cell here
        cell .layer.cornerRadius = 10
        cell.clipsToBounds = true
        
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "groupsSectionHeaderView", for: indexPath) as! groupsSectionHeaderView
        
        let headerTitleString = "Group Number \(indexPath.section+1)"
        
        headerView.headerTitleLabel.text = headerTitleString
        
        return headerView
    }
    // Set height for header cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 0.0, height: collectionView.frame.height/15)
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }

}
