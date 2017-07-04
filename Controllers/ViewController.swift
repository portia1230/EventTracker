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

    @IBOutlet weak var mainMapView: MKMapView!
    @IBOutlet weak var changeMapTypeButton: UIButton!
    
    
    //functions
    
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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

