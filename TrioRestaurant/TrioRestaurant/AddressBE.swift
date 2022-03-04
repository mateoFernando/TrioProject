//
//  AddressBE.swift
//  TrioRestaurant
//
//  Created by Fernando Daniel on 3/03/22.
//

import Foundation

struct AddressBE: Codable {

    var city: String
    var formatted: String
    var postal_code: Int
    var state: String?
    var street: String
}
