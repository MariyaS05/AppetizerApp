//
//  Alert.swift
//  Appetizers
//
//  Created by Govorushko Mariya on 20.01.25.
//

import Foundation
import SwiftUI

struct AlertItem: Identifiable {
    var id = UUID()
    let title: Text
    let message: String
    let dissmissButton: Alert.Button
}

struct AlertContext {
    
    //MARK: - Network errors
    static let invalidData: AlertItem = AlertItem(title:Text("Server Error"),
                                                    message: "The data received from server was invalid. Please try again later.",
                                                    dissmissButton: .default(Text("Ok")))
    
    static let invalidUrl: AlertItem = AlertItem(title: Text("Server Error"),
                                                 message: "Invalid response from the server.Please try again later or contact supports",
                                                 dissmissButton: .default(Text("Ok")))
    
    static let invalidResponse: AlertItem = AlertItem(title: Text("Server Error"),
                                                      message: "There was an issue connecting to the server.If this persists, please contact supports",
                                                      dissmissButton: .default(Text("Ok")))
    
    static let unableToComplete: AlertItem = AlertItem(title: Text("Server Error"),
                                                       message: "Unable to complete your request at this time.Please check your interner connection and try again later",
                                                       dissmissButton: .default(Text("Ok")))
    
    //MARK: - Account errors
    static let invalidForm: AlertItem = AlertItem(title: Text("Invalid form"),
                                                       message: "Please ensure all fields in the form have been filled out",
                                                       dissmissButton: .default(Text("Ok")))
    
    static let invalidEmail: AlertItem = AlertItem(title: Text("Invalid email"),
                                                       message: "Please ensure your email is correct",
                                                       dissmissButton: .default(Text("Ok")))
    
    
    static let userSaveSuccess: AlertItem = AlertItem(title: Text("Profile saved"),
                                                       message: "Your profile information was successfully saved.",
                                                       dissmissButton: .default(Text("Ok")))
    
    static let invalidUserData: AlertItem = AlertItem(title: Text("Profile Error"),
                                                       message: "There was an error saving or retrieving your profile.",
                                                       dissmissButton: .default(Text("Ok")))
    
    
    
}
