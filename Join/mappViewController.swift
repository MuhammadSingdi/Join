//
//  mappViewController.swift
//  Join
//
//  Created by Singdi,Muhammad on 5/22/17.
//  Copyright © 2017 Singdi,Muhammad. All rights reserved.
//

import UIKit
import MapKit

class mappViewController: UIViewController {

    @IBOutlet weak var M: MKMapView!{
        didSet{
            M.mapType = .standard
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let longitude : CLLocationDegrees =  41.8781
        let latitude : CLLocationDegrees = 87.6298
        let longDelta : CLLocationDegrees = 0.1
        let latDelta : CLLocationDegrees = 0.1
        let location : CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let span : MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        let region : MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        M.setRegion(region, animated: true)


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
