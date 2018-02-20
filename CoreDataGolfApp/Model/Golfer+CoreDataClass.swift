//
//  Golfer+CoreDataClass.swift
//  CoreDataGolfApp
//
//  Created by Keith Bamford on 19/02/2018.
//  Copyright © 2018 AKA Consultants. All rights reserved.
//
//

import Foundation
import CoreData


public class Golfer: NSManagedObject {

    static var golferDictionary: [String:Int] {
        // Test Data....
        let golferNames = ["Keith Bamford",
                           "Kenny Barratt",
                           "Alan Bromley",
                           "Bernard Bull",
                           "John Bolton",
                           "John Cashman",
                           "Graham Clarke",
                           "Mick Clarke",
                           "Dan DeAbreu",
                           "James DeAbreu",
                           "Mario DeAbreu",
                           "Steve DeAbreu",
                           "Steve Downs",
                           "Adrian Harding",
                           "Nigel Maqueline",
                           "Jeff Mabbitt",
                           "Jimmy Simms",
                           "Jimmy Sweeney"]
        
        let golferHandicaps:[Int] = [175, 171, 165, 261, 167, 164, 212, 178, 217, 255, 218, 162, 59, 114, 128, 138, 105, 184]
        
        var _golferDictionary = [String:Int]()
        
        if golferHandicaps.count == golferNames.count {
            for (index, aName) in golferNames.enumerated() {
                _golferDictionary.updateValue(golferHandicaps[index], forKey: aName)
            }
        }
        //DEBUG
        print("GS _golferDictionary: \(_golferDictionary)\n")
        return _golferDictionary
    }
    
    static func createGolfersInCoreData(_ golferDict: [String:Int]) {
        
        for golfer in golferDict {
            
            
            
        }
        
    }
    
}
