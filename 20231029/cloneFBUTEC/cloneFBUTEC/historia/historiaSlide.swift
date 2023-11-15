//
//  historiaSlide.swift
//  cloneFBUTEC
//
//  Created by Roberto Flores on 29/10/23.
//

import SwiftUI

let nombres = ["Juan Perez", "El Jicamoso", "Irma Rosales", "Johan Mastropiero", "Helena Elena"]

struct historiaSlide: View {
    var body: some View {
        ScrollView(
            .horizontal, showsIndicators: false){
                HStack{
                    miHistoria()
                    ForEach(1..<6){
                        i in 
                        HistoriaCard (
                        imagenNombre: "historia0\(i)",
                        perfilFoto: "profile0\(i)",
                        titulo: nombres[i-1])
                        .foregroundColor(.white)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                    }
                }
            }
    }
}

#Preview {
    historiaSlide()
}
