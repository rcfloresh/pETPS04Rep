//
//  ContentView.swift
//  cparcial2530892009
//
//  Created by Roberto Flores on 22/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var carnet:String=""
    @State var password:String=""
    
    var body: some View {

        HStack{
            VStack{
                Text("ETPS4")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    
            }.padding(13)
                .background(.utecRed)
                .cornerRadius(10)
            
            VStack{
                Text("PARCIAL III")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    
            }.padding(13)
                .background(.utecRed)
                .cornerRadius(10)
        }
        
        Image(.utecBuilds)
            .resizable()
            .frame(width: 200, height: 200)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .padding(.top, -25)
            .shadow(color:.black.opacity(0.25), radius: 10, x:0, y:20)
        
        
        HStack{
            VStack{
                Text("UTEC  🦅")
                    .font(.title)
                    .foregroundColor(.white)
                    
            }.padding(13)
                .background(.gray)
                .cornerRadius(10)
        }

        VStack{
            TextField("👤 Carnet:", text: $carnet)
                .keyboardType(.numberPad)
                .disableAutocorrection(true)
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)
                .padding(.top, 20)


                        
            SecureField("🔑 Password", text: $password)
                .keyboardType(.emailAddress)
                .disableAutocorrection(true)
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)
                .padding(.top, 7)

            
            
            Button(action:{
                print("*******************")
                print("🔒: \(carnet)")
                print("🔑: \(password)")
                print("Parcial Resuelto 🏆")
                print("*******************")
            },
                   label : {
                Text("Ingresar".uppercased())
                    .foregroundColor(.white)
                    .padding()
                    .background(.utecRed)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    .padding(.horizontal, 60)
                    .padding(.top, 7)
            })
            
        }
        
        
    }
}

#Preview {
    ContentView()
}
