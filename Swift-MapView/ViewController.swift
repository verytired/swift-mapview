//
//  ViewController.swift
//  Swift-MapView
//
//  Created by Yutaka Sano on 2015/09/03.
//  Copyright (c) 2015年 Yutaka Sano. All rights reserved.
//

import UIKit

import MapKit


class ViewController: UIViewController,MKMapViewDelegate {

    @IBOutlet var mapView:MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 緯度・軽度を設定
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(35.68154,139.752498)
        
        mapView.setCenterCoordinate(location,animated:true)
        
        // 縮尺を設定
        var region:MKCoordinateRegion = mapView.region
        region.center = location
        region.span.latitudeDelta = 0.02
        region.span.longitudeDelta = 0.02
        
        mapView.setRegion(region,animated:true)
        
        // 表示タイプを航空写真と地図のハイブリッドに設定
                mapView.mapType = MKMapType.Standard
        //        mapView.mapType = MKMapType.Satellite
//        mapView.mapType = MKMapType.Hybrid
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

