//
//  tacos.swift
//  Parcial4_2530892009
//
//  Created by Roberto Flores on 19/11/23.
//

import SwiftUI

struct tacos: View {
    
    let imagenTaco : String
    let nombreTaco : String
    let precioTaco : String
    
    var body: some View {

        ZStack {
            VStack{
                Image(imagenTaco)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75, height: 75)
                Text(nombreTaco)
                Text(precioTaco)
                    .font(.system(size: 20, weight: .bold))
                    .frame(width:120, alignment: .trailing)
                    .padding(15)
                
            }.clipShape(Rectangle())
                .cornerRadius(20)
                .shadow(radius: 20)
                .frame(width: 150, height: 200)
                .background(.pink)
            .cornerRadius(20)
        }.shadow(radius: 20)
    }
}

#Preview {
    tacos(imagenTaco: "", nombreTaco: "", precioTaco: "")
}
