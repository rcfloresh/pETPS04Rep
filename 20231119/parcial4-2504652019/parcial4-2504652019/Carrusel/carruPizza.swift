//
//  carruPizza.swift
//  parcial4-2504652019
//
//  Created by Rosa Herrera on 19/11/23.
//

import SwiftUI

let nombrePizza = ["Combo 01", "Combo 02", "Combo 03", "Combo 04", "Combo 05"]
let precioPizza = ["$2.50","$7.00","$4.00","$3.00","$10.00"]
let fotoPizza = ["pizza01","pizza02","pizza03","pizza04","pizza05"]

struct carruPizza: View {
    var body: some View {
    ScrollView(.horizontal,showsIndicators:false){
        HStack{
            ForEach(1..<6){
                i in
            pizza(
                fotoPizza:"pizza\(i)",
                nombrePizza:nombrePizza[i-1],
                precioPizza:precioPizza[i-1])
                .foregroundColor(.white)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
}

#Preview {
    carruPizza()
}
