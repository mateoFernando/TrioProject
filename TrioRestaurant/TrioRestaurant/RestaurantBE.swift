//
//  RestaurantBE.swift
//  TrioRestaurant
//
//  Created by Fernando Daniel on 3/03/22.
//

import Foundation

struct Root: Codable {
    var result: RestaurantBE

    enum CodingKeys: String, CodingKey  {
        case result
    }
}

struct RestaurantBE: Codable {

    var restaurant_name: String
    var restaurant_phone: String
    var restaurant_website: String
    var hours: String
    var price_range: String
    var price_range_num: Int
    var restaurant_id: Int
    var cuisines: [String]?
    var last_update: String
    var address: AddressBE
    var geo: GeoBE
    var menus: [MenuBE]
}
