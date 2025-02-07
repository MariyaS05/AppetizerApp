//
//  CountView.swift
//  Appetizers
//
//  Created by Govorushko Mariya on 20.01.25.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel = AccountViewModel()
    @FocusState private var focusTextField: FormTextFied?
    
    enum FormTextFied {
        case firstName
        case lastName
        case email
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(
                    content: {
                        TextField("First name", text:  $viewModel.user.firstName)
                            .focused($focusTextField, equals: .firstName)
                            .onSubmit {
                                focusTextField = .lastName
                            }
                            .submitLabel(.next)
                        TextField("Last name", text: $viewModel.user.lastName)
                            .focused($focusTextField, equals: .lastName)
                            .onSubmit {
                                focusTextField = .email
                            }
                            .submitLabel(.next)
                        TextField("Email", text: $viewModel.user.email)
                            .focused($focusTextField, equals: .email)
                            .onSubmit {
                                focusTextField = nil
                            }
                            .submitLabel(
                                .done
                            )
                            .keyboardType(.emailAddress)
                            .textInputAutocapitalization(.never)
                            .autocorrectionDisabled()
                        DatePicker("Birthday", selection: $viewModel.user.birthdate, displayedComponents: .date)
                        
                        Button(action: {
                            viewModel.saveChanges()
                        }) {
                            Text("Save changes")
                        }
                        
                    },
                    header: {
                    Text("Personal Info")
                })
                
                
                Section {
                    Toggle(isOn: $viewModel.user.extraNapkins) {
                        Text("Extra Napkins")
                    }
                    .toggleStyle(.switch)
                    Toggle(isOn: $viewModel.user.frequentRefils) {
                        Text("Frequent Refils")
                    }
                } header: {
                    Text("Requests")
                }
            }
            .toolbar(content: {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Dissmiss") { focusTextField = nil }
                }
            })
            .navigationTitle("Account")
            
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title, message: Text(alertItem.message), dismissButton: alertItem.dissmissButton)
            }
        }
    }
}

#Preview {
    AccountView()
}
