//
//  Tournee+CoreDataClass.swift
//  CoreDataGolfApp
//
//  Created by Keith Bamford on 19/02/2018.
//  Copyright © 2018 AKA Consultants. All rights reserved.
//
//

import Foundation
import CoreData


public class Tournee: NSManagedObject {
    
    private var complete: Bool = false
    
    
    class func createAndSaveTournee(with players: [Golfer], inManagedObjectContext context: NSManagedObjectContext) -> Tournee {
        var tempTournee: Tournee = Tournee()
        
        if let tournee = NSEntityDescription.insertNewObject(forEntityName: Constants.Entity.tourneeEntityString, into: context) as? Tournee {
            tournee.date = Date() as NSDate
            tournee.day = Date.dateAsString(tournee.date! as Date)
            tournee.playingGroups = [[Golfer]]()
            tournee.scores = [String:Int]()
            tournee.prizeFund = (players.count * Constants.Tournee.entryFee) as? NSDecimalNumber
            
            tempTournee = tournee
        }
        
        
        for golfer in players {
            
            tempTournee.addToHasEntrants(golfer)
            
        }
        
        
        
        
        
        
        return tempTournee
    }
    
    
    
    
    
}
