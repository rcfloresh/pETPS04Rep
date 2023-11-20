//
//  carruPizza.swift
//  parcial4-2504652019
//
//  Created by Rosa Herrera on 19/11/23.
//

import SwiftUI

let nombreHamburguesa = ["Combo 01", "Combo 02", "Combo 03", "Combo 04", "Combo 05"]
let precioHamburguesa = ["$7.00","$4.50","$4.00","$3.00","$6.00"]
let fotoHamburguesa = ["hamburguesa1","hamburguesa2","hamburguesa3","hamburguesa4","hamburguesa5"]

struct carruHamburguesa: View {
    
    var body: some View {
    ScrollView(.horizontal,showsIndicators:false){
        HStack{
            ForEach(1..<6){
                i in
            hamburguesa(
                fotoHamburguesa:"hamburguesa\(i)",
                nombreHamburguesa:nombreHamburguesa[i-1],
                precioHamburguesa:precioHamburguesa[i-1])
                .foregroundColor(.white)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                }
            }
        }
    }
}

#Preview {
    carruHamburguesa()
}
