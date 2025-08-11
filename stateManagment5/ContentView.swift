//
//  ContentView.swift
//  stateManagment5
//
//  Created by Lena Hunanian on 11.08.25.
//

import SwiftUI

struct ContentView: View {
    @State private var user = FormModel(username: "Some Name")
    var body: some View {
        UserView(user: $user)
    }
}

struct UserView: View {
    @Binding var user: FormModel
    var body: some View {
        Form {
            Section(header: Text("Name")) {
                TextField("Enter Your Name", text: $user.username)
                    
            }
            Section{
                Button("Submit"){
                    user.submit()
                }
                .foregroundStyle(.green)
                .disabled(user.username.isEmpty)
            }
            Section {
                Text(user.submitText)
            }
        }
    }
    
    
}



#Preview {
    ContentView()
}
