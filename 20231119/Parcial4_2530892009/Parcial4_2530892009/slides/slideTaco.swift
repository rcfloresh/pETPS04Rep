//
//  slideTaco.swift
//  Parcial4_2530892009
//
//  Created by Roberto Flores on 19/11/23.
//

import SwiftUI

let nombreTacos = ["Tacos de Lengua", "Carnitas", "Mixtos", "Birra", "Pastor"]
let precioTacos = ["$4.50","$2.75","$3.00","$1.75","$6.00"]
let fotoTacos = ["tacos01","tacos02","tacos03","tacos04","tacos05"]

struct slideTaco: View {
    var body: some View {
 
        ScrollView(.horizontal,showsIndicators:false){
            
            HStack{
                ForEach(1..<5){
                    i in
                tacos(
                    imagenTaco:"taco0\(i)",
                    nombreTaco:nombreTacos[i-1],
                    precioTaco:precioTacos[i-1])
                    .foregroundColor(.bgColorCus)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                }
            }
            
        }
    }
}

#Preview {
    slideTaco()
}
