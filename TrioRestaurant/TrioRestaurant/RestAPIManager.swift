//
//  RestAPIManager.swift
//  TrioRestaurant
//
//  Created by Fernando Daniel on 3/03/22.
//

import Foundation
import UIKit

protocol Endpoint {
    var httpMethod: String { get }
    var baseURLString: String { get }
    var path: String { get }
    var headers: [String: Any]? { get }
    var body: [String: Any]? { get }
}

extension Endpoint {

    var url: String {
        return baseURLString + path
    }
}

enum EndpointCases: Endpoint {
    case getRestaurant(restaurant: String)

    var httpMethod: String {
        switch self {
        case .getRestaurant:
            return "GET"
        }
    }

    var baseURLString: String {
        switch self {
        case .getRestaurant:
            return "https://api.documenu.com/v2/"
        }
    }

    var path: String {
        switch self {
        case .getRestaurant(let restaurant):
            return "restaurant/\(restaurant)"
        }
    }

    var headers: [String: Any]? {
        switch self {
        case .getRestaurant:
            return ["Content-Type": "application/json",
                    "Accept": "application/json",
                    "X-API-KEY": "1649101037b69a91d044c2b0e278bc73"]
        }
    }

    var body: [String : Any]? {
        switch self {
        case .getRestaurant:
            return [:]
        }
    }
}
