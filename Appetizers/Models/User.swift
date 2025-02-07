//
//  User.swift
//  Appetizers
//
//  Created by Govorushko Mariya on 5.02.25.
//

import Foundation

struct User: Codable {
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var birthdate: Date = Date()
    var extraNapkins: Bool = false
    var frequentRefils: Bool = false
}
