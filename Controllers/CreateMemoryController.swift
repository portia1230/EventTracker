//
//  CreateMemoryController.swift
//  EventTracker
//
//  Created by Portia Wang on 7/2/17.
//  Copyright © 2017 Portia Wang. All rights reserved.
//

import UIKit
import MapKit
class CreateMemoryController: UIViewController, MKMapViewDelegate {
    
    
    //properties
    
    @IBOutlet weak var addedPhoto: UIImageView!
    @IBOutlet weak var locationMapView: MKMapView!
    @IBOutlet weak var uploadPhotoButton: UIButton!
    var photoHelper = MGPhotoHelper()
    
    //functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
    locationMapView.showsUserLocation = true
    locationMapView.delegate = self
        
    uploadPhotoButton.layer.cornerRadius = 10
    addedPhoto.layer.cornerRadius = 10

    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        //set region/zoom in for map
        let userLocation = locationMapView.userLocation
        let region = MKCoordinateRegionMakeWithDistance((userLocation.location?.coordinate)!, 2000, 2000)
        locationMapView.setRegion(region, animated: true)
    }
    
    @IBAction func uploadPhotoButtonTapped(_ sender: UIButton) {
        photoHelper.presentActionSheet(from: self)
        photoHelper.completionHandler = { image in
            self.addedPhoto.image = image
        }
    
    }
 
}
