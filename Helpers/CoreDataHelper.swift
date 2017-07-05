//
//  CoreDataHelper.swift
//  EventTracker
//
//  Created by Portia Wang on 7/2/17.
//  Copyright © 2017 Portia Wang. All rights reserved.
//

import CoreData
import UIKit

class CoreDataHelper {
    static let appDelegate = UIApplication.shared.delegate as! AppDelegate
    static let persistentContainer = appDelegate.persistentContainer
    static let managedContext = persistentContainer.viewContext
    
    //static methods will go here
    
    //new activity
    static func newActivity() -> Activity {
        let activity = NSEntityDescription.insertNewObject(forEntityName: "Activity", into: managedContext) as! Activity
        return activity
    }
    
    //save activity
    static func saveActivity() {
        do{
            try managedContext.save()
        } catch let error as NSError{
            print("could not save \(error)")
        }
    }
    
    //delete activity
    static func deleteActivity (activity: Activity){
        managedContext.delete(activity)
        saveActivity()
    }
    
    //retreive activity
    
    static func retrieveActivities() -> [Activity] {
        let fetchRequest = NSFetchRequest<Activity>(entityName: "Activity")
        do {
            let results = try managedContext.fetch(fetchRequest)
            return results
        } catch let error as NSError {
            print("Could not fetch \(error)")
        }
        return []
    }
}





