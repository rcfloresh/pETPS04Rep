//
//  carruPizza.swift
//  parcial4-2504652019
//
//  Created by Rosa Herrera on 19/11/23.
//

import SwiftUI

let nombrePollo = ["Combo 01", "Combo 02", "Combo 03", "Combo 04", "Combo 05"]
let precioPollo = ["$4.00","$3.00","$6.00","$5.00","$9.00"]
let fotoPollo = ["pollo1","pollo2","pollo3","pollo4","pollo5"]

struct carruPollo: View {
    
    var body: some View {
    ScrollView(.horizontal,showsIndicators:false){
        HStack{
            ForEach(1..<6){
                i in
            pollo(
                fotoPollo:"pollo\(i)",
                nombrePollo:nombrePollo[i-1],
                precioPollo:precioPollo[i-1])
                .foregroundColor(.white)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                }
            }
        }
    }
}

#Preview {
    carruPollo()
}
