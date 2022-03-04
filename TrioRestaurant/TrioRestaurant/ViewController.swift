//
//  ViewController.swift
//  TrioRestaurant
//
//  Created by Fernando Daniel on 2/03/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let restaurantEndpoint = EndpointCases.getRestaurant(restaurant: "4072702673999819")
        RestaurantManager().getRestaurant(endpoint: restaurantEndpoint) { response, error in
            
        }
    }


}

