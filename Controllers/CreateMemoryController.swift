//
//  CreateMemoryController.swift
//  EventTracker
//
//  Created by Portia Wang on 7/2/17.
//  Copyright © 2017 Portia Wang. All rights reserved.
//

import Foundation
import UIKit
import MapKit
class CreateMemoryController: UIViewController, MKMapViewDelegate {
    
    
    //properties
    @IBOutlet weak var addedPhoto: UIImageView!
    
    @IBOutlet weak var locationMapView: MKMapView!
    
    
    //functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
    locationMapView.showsUserLocation = true
    locationMapView.delegate = self
    
    //set region for map
    let userLocation = locationMapView.userLocation
    let region = MKCoordinateRegionMakeWithDistance(userLocation.location!.coordinate, 2000,2000)
    locationMapView.setRegion(region, animated: true)
    

    }
    
    @IBAction func addPhotoButtonTapped(_ sender: UIButton) {
    }
}
