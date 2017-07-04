//
//  PinAnnotation.swift
//  EventTracker
//
//  Created by Portia Wang on 7/3/17.
//  Copyright © 2017 Portia Wang. All rights reserved.
//

import Foundation
import MapKit

class PinAnnotation: NSObject, MKAnnotation{
    
    //properties
    
    var title: String?
    var descriptionOfMemory: String?
    var coordinate: CLLocationCoordinate2D
    var image: UIImage
    var dates: [Date] = []
    
    
    //functions

    init(title: String, descriptionOfMemory: String , coordinate: CLLocationCoordinate2D, image: UIImage, date: Date){
        self.title = title
        self.descriptionOfMemory = descriptionOfMemory
        self.coordinate = coordinate
        self.image = image
        self.dates.append(date)
    }
    
}
