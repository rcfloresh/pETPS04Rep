//
//  ContentView.swift
//  operaciones
//
//  Created by Roberto Flores on 8/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var myInteger = 1
  
    @State private var A = 2
    @State private var B = 4
    
    var body: some View
    {
        VStack{
            Text("\(myInteger)")
            Button(action:{self.myInteger += 1}){
                Text("Tap me!")
            }
        }.padding()
        
        VStack{
            Text("La suma de \(A) y \(B) es: \(A+B)")
            Text("La resta de \(A) y \(B) es: \(A-B)")
            Text("La multiplicacion de \(A) y \(B) es: \(A*B)")
            Text("La division de \(A) y \(B) es: \(A/B)")
        }
    }
}

struct OutSourceButtonView: View {
    @Binding var myInteger: Int
    
    var body: some View {
        Button(action: {self.myInteger += 1}){
            Text("Tap Me!!")
        }
    }
}


#Preview {
    ContentView()
}
