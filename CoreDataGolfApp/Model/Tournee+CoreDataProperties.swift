//
//  Tournee+CoreDataProperties.swift
//  CoreDataGolfApp
//
//  Created by Keith Bamford on 19/02/2018.
//  Copyright © 2018 AKA Consultants. All rights reserved.
//
//

import Foundation
import CoreData


extension Tournee {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Tournee> {
        return NSFetchRequest<Tournee>(entityName: "Tournee")
    }

    @NSManaged public var completed: Bool
    @NSManaged public var date: NSDate?
    @NSManaged public var day: String?
    @NSManaged public var playingGroups: [[Golfer]]?
    @NSManaged public var prizeFund: Int16
    @NSManaged public var scores: [String:Int]?

}
