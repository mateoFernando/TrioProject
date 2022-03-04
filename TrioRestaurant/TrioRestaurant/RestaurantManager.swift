//
//  Restaurant.swift
//  TrioRestaurant
//
//  Created by Fernando Daniel on 3/03/22.
//

import Foundation

class RestaurantManager {

    func getRestaurant(endpoint: Endpoint, completion: @escaping (Root, Error?) -> Void) {

        let session = URLSession.shared
        let url = URL(string: endpoint.url)!
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = endpoint.httpMethod
        endpoint.headers?.forEach({ header in
            urlRequest.setValue(header.value as? String, forHTTPHeaderField: header.key)
        })

        let task = session.dataTask(with: urlRequest) { data, response, error in
            guard let data = data, error == nil else { return }
            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                    print(json)
                    let result = try JSONDecoder().decode(Root.self, from: data)
                    completion(result, error)
                }
            } catch let error as NSError {
                print("Failed to load: \(error.localizedDescription)")
            }
        }
        task.resume()
    }
}
