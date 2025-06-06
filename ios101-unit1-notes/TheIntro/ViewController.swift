//
//  ViewController.swift
//  TheIntro
//
//  Created by Christian Coulibaly on 6/4/25.
//

import UIKit

struct Person {
    let name: String
    var age: Int
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let firstPerson: Person = Person(name: "Christian", age: 25)
        let secondPerson: Person = Person(name: "Alice", age: 22)
        
        var allPersons: [Person] = []
        allPersons.append(firstPerson)
        allPersons.append(secondPerson)
        
        print(allPersons.last?.age)
        
        var _: Set<String> = [firstPerson.name, secondPerson.name]
        
        var dictionaryOfPersons: [String: Person] = [:]
        dictionaryOfPersons[firstPerson.name] = firstPerson
        dictionaryOfPersons[secondPerson.name] = secondPerson
        
    }
    
    var fullName = { (first: String, last: String) -> String in
        "\(first) \(last)"
    }
    
    func prismVolume(
        height: Double,
        dim1: Double,
        dim2: Double,
        area: (Double, Double) -> Double) -> Double {
            return area(dim1, dim2) * height
        }

    print(prismVolume(height: 2, dim1: 10, dim2: 12, area:rectangleArea))
    
    let rectangleArea = { (length: Double, width: Double) -> Double in (length * width)}
    let rightTria


}

