//
//  GroupsViewController.swift
//  CoreDataGolfApp
//
//  Created by Keith Bamford on 19/02/2018.
//  Copyright © 2018 AKA Consultants. All rights reserved.
//

import UIKit

class GroupsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var golferCollectionView: UICollectionView!
    
    
    var golfer: Golfer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        golferCollectionView.delegate = self
        golferCollectionView.dataSource = self

        // Do any additional setup after loading the view.
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
    
//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: <#T##String#>, withReuseIdentifier: <#T##String#>, for: <#T##IndexPath#>)
//        
//        headerView.backgroundColor = .richRed
//        
//        return headerView as! UICollectionReusableView
//    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }

}
