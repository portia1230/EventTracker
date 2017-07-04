//
//  ViewController.swift
//  EventTracker
//
//  Created by Portia Wang on 7/1/17.
//  Copyright © 2017 Portia Wang. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
//properties

    var activities = [Activity]()
    @IBOutlet weak var mainMapView: MKMapView!
    @IBOutlet weak var changeMapTypeButton: UIButton!
    
    
//functions
    
    @IBAction func unwindToViewController(_ segue: UIStoryboardSegue) {
    }
    
    //change map type
    @IBAction func changeMapTypeButtonTapped(_ sender: UIButton) {
        if mainMapView.mapType == MKMapType.standard{
            mainMapView.mapType = MKMapType.satellite
        }else{
            mainMapView.mapType = MKMapType.standard
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeMapTypeButton.layer.cornerRadius = 15
        activities = CoreDataHelper.retrieveActivities()
        var coordinate = CLLocationCoordinate2D()
        for activity in activities{
            coordinate.latitude = activity.latitude as! CLLocationDegrees
            coordinate.longitude = activity.longitude as! CLLocationDegrees
            let annotation = PinAnnotation(title: activity.name!, descriptionOfMemory: activity.descriptionOfActivity!, coordinate: coordinate, image: activity.photo as! UIImage, date: activity.dateCreated! as Date)
            
            mainMapView.addAnnotation(annotation)
            
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

