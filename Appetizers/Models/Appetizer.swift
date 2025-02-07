//
//  Appetizer.swift
//  Appetizers
//
//  Created by Govorushko Mariya on 20.01.25.
//

import Foundation

struct Appetizer: Codable, Identifiable {
    let imageURL: String
    let calories, id, carbs: Int
    let price: Double
    let name, description: String
    let protein: Int
}

struct AppetizerResponse: Codable {
    let request: [Appetizer]
}


struct MockData {
    static  let sampleAppetize = Appetizer(imageURL: "",
                                           calories: 99,
                                           id: 0001,
                                           carbs: 10,
                                           price: 9.99,
                                           name: "Test Appetizer",
                                           description: "This is the description for my appetizer.Its yummy.",
                                           protein: 99)
    
    static  let orderItemOne = Appetizer(imageURL: "",
                                           calories: 99,
                                           id: 0002,
                                           carbs: 10,
                                           price: 9.99,
                                           name: "Test Appetizer two",
                                           description: "This is the description for my appetizer.Its yummy.",
                                           protein: 99)
    
    static  let orderItemThree = Appetizer(imageURL: "",
                                           calories: 99,
                                           id: 0003,
                                           carbs: 10,
                                           price: 9.99,
                                           name: "Test Appetizer three",
                                           description: "This is the description for my appetizer.Its yummy.",
                                           protein: 99)
    
    
    static let appetizers = [sampleAppetize, orderItemOne, orderItemThree]
}
