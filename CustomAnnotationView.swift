//
//  CustomAnnotation.swift
//  EventTracker
//
//  Created by Portia Wang on 7/4/17.
//  Copyright © 2017 Portia Wang. All rights reserved.
//

import UIKit
import MapKit

class CustomAnnotationView: MKAnnotationView {
    var imageUploaded : UIImage?
    var timesOfEntry : Int?
    var title: String?
    var content: String?
    
    
//    init (activity: Activity){
//        self.imageUploaded = activity.photo as! UIImage
//        self.timesOfEntry = Int(activity.times)
//        self.title = activity.name
//        self.content = activity.descriptionOfActivity
//        Super.init(decoder: NSCoder)
//    }
    
    
    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
    }
    
    func setValue (activity: Activity){
        self.imageUploaded = activity.photo as? UIImage
        self.timesOfEntry = Int(activity.times)
        self.title = activity.name
        self.content = activity.descriptionOfActivity
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
