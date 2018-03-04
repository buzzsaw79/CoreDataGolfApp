//
//  Tournee+CoreDataProperties.swift
//  CoreDataGolfApp
//
//  Created by Keith Bamford on 04/03/2018.
//  Copyright © 2018 AKA Consultants. All rights reserved.
//
//

import Foundation
import CoreData


extension Tournee {

    @nonobjc public class func tourneeFetchRequest() -> NSFetchRequest<Tournee> {
        return NSFetchRequest<Tournee>(entityName: "Tournee")
    }

    @NSManaged public var completed: Bool
    @NSManaged public var date: NSDate?
    @NSManaged public var day: String?
    @NSManaged public var playingGroups: [[Golfer]]?
    @NSManaged public var prizeFund: NSDecimalNumber?
    @NSManaged public var scores: [String:Int]?
    @NSManaged public var hasEntrants: NSSet?

}

// MARK: Generated accessors for hasEntrants
extension Tournee {

    @objc(addHasEntrantsObject:)
    @NSManaged public func addToHasEntrants(_ value: Golfer)

    @objc(removeHasEntrantsObject:)
    @NSManaged public func removeFromHasEntrants(_ value: Golfer)

    @objc(addHasEntrants:)
    @NSManaged public func addToHasEntrants(_ values: NSSet)

    @objc(removeHasEntrants:)
    @NSManaged public func removeFromHasEntrants(_ values: NSSet)

}
