//
//  ViewController.swift
//  Networking
//
//  Created by Christian Coulibaly on 7/2/25.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let session = URLSession.shared
        let url = createURLForFeed(food: "chicken")!
        let request = URLRequest(url: url)
        let task = session.dataTask(with: request) { data, response, error in
            if let data {
                let decoder = JSONDecoder()
                let response = try? decoder.decode(MealResponse.self, from: data)
                if let response {
                    print(response)
                }
            }
            task.resume()
        }
        }
        
        func createURLForFeed(food: String) -> URL? {
            let stringURL = "https://www.themealdb.com/api/json/v1/1/search.php"
            var components = URLComponents(string: stringURL)
            let queryItem = URLQueryItem(name: "s", value: food)
            components?.queryItems = [queryItem]
            return components?.url
        }
        
        struct MealResponse: Codable {
            let meals: [Meal]?
        }
        
        struct Meal: Codable {
            let idMeal: String
            let strMeal: String
        }
        
    }
    

