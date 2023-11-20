//
//  slideTorta.swift
//  Parcial4_2530892009
//
//  Created by Roberto Flores on 19/11/23.
//

import SwiftUI

let nombreTortas = ["La Correcta", "Doble Carne", "La sencilla", "Tranquilona", "Pesadita"]
let precioTortas = ["$4.50","$2.75","$3.00","$1.75","$6.00"]
let fotoTorta = ["torta01","torta02","torta03","torta04","torta05"]


struct slideTorta: View {
    var body: some View {

        ScrollView(.horizontal,showsIndicators:false){
            HStack{
                ForEach(1..<5){
                    i in
                torta(
                    imagenTorta:"torta0\(i)",
                    nombreTorta:nombreTortas[i-1],
                    precioTorta:precioTortas[i-1])
                    .foregroundColor(.bgColorCus)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                }
            }
            
        }
    }
}

#Preview {
    slideTorta()
}
