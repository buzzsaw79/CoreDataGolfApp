//
//  Golfer+CoreDataProperties.swift
//  CoreDataGolfApp
//
//  Created by Keith Bamford on 04/03/2018.
//  Copyright © 2018 AKA Consultants. All rights reserved.
//
//

import Foundation
import CoreData


extension Golfer {

    @nonobjc public class func golferFetchRequest() -> NSFetchRequest<Golfer> {
        return NSFetchRequest<Golfer>(entityName: "Golfer")
    }

    @NSManaged public var handicap: NSDecimalNumber?
    @NSManaged public var image: NSData?
    @NSManaged public var name: String?
    @NSManaged public var scores: [String:Int]?
    @NSManaged public var winnings: NSDecimalNumber?
    @NSManaged public var clubHandicap: NSDecimalNumber?
    @NSManaged public var playsInA: Tournee?

}
