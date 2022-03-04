//
//  MenuBE.swift
//  TrioRestaurant
//
//  Created by Fernando Daniel on 3/03/22.
//

import Foundation

struct MenuBE: Codable {

    var menu_name: String?
    var menu_sections: [MenuSectionsBE]
}

struct MenuSectionsBE: Codable {

    var description: String
    var menu_items: [MenuItemBE]
    var section_name: String?

}

struct MenuItemBE: Codable {

    var description: String
    var name: String?
    var price: String
    var pricing: [MenuItemPricingBE]
}

struct MenuItemPricingBE: Codable {

    var currency: String?
    var price: String
    var priceString: String
}
