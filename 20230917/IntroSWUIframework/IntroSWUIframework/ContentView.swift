//
//  ContentView.swift
//  IntroSWUIframework
//
//  Created by Roberto Flores on 17/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            Image("IconLogin")
                
                
            
            Image(systemName: "person")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            HStack{
                
                Text(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/)
                TextField("Placeholder", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding()
            }
            
            HStack{
                //Label("Password: ", systemImage: <#T##String#>)
                
                Text("Password:")
                SecureField(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/"Password"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("Apple")/*@END_MENU_TOKEN@*/)
            }
            
    
            Button("Iniciar Sesion") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
