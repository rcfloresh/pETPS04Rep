//
//  ContentView.swift
//  login
//
//  Created by Roberto Flores on 15/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var user:String=""
    @State var password:String=""
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100, alignment: .center)
                .foregroundColor(.green)
            
            TextField("Username", text: $user)
                .keyboardType(.emailAddress)
                .disableAutocorrection(true)
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)
                .padding(.top, 40)
                .onChange(of: user, perform: {value in print("New Value \(value)")})

                        
            SecureField("Password", text: $password)
                .keyboardType(.emailAddress)
                .disableAutocorrection(true)
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)
                .padding(.top, 40)
                .onChange(of: password, perform: {value in print("New Value \(value)")})
            
            Button("Ingresar"){
                print("*******************")
                print("🔒:  \(user)")
                print("🔑: \(password)")
                print("*******************")
            }
            
            Spacer()
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
