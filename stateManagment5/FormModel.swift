//
//  FormModel.swift
//  stateManagment5
//
//  Created by Lena Hunanian on 11.08.25.
//
import SwiftUI
import Observation

@Observable
class FormModel {
    var username: String
    var submitText: String = ""
    init(username: String) {
        self.username = username
    }
    func submit() {
          submitText = "User submitted with name: \(username)"
      }
}
