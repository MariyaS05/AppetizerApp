//
//  APIError.swift
//  Appetizers
//
//  Created by Govorushko Mariya on 20.01.25.
//

import Foundation

enum APIError: Error {
    case invalidUrl
    case invalidResponse
    case invalidData
    case unableToComplete
}
