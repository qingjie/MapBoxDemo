//
//  ViewController.swift
//  MapBoxDemo
//
//  Created by qingjiezhao on 6/13/16.
//  Copyright © 2016 dongyaocun. All rights reserved.
//

import UIKit
import Mapbox

class ViewController: UIViewController {

    @IBOutlet var mapView: MGLMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let point = MGLPointAnnotation()
        point.coordinate = CLLocationCoordinate2D(latitude: 43.6036,longitude: -116.208710)
        
        point.title = "Warm Springs"
        point.subtitle = "Idaho, USA"
        mapView.addAnnotation(point)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func mapView(mapView:MGLMapView,annotationCanShowCallout annotation:MGLAnnotation) -> Bool{
        return true
    }
}

