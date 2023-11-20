//
//  slideBurger.swift
//  Parcial4_2530892009
//
//  Created by Roberto Flores on 19/11/23.
//

import SwiftUI

let nombreHamburguesa = ["1/4 de Libra", "Doble", "Cholotona", "Bebes", "RompeCalzones3K"]
let precioHamburguesa = ["$4.50","$2.75","$3.00","$1.75","$6.00"]
let fotoHamburguesa = ["burger01","burger02","burger03","burger04","burger05"]


struct slideBurger: View {
    
    var body: some View {
        
        
        ScrollView(.horizontal,showsIndicators:false){
            HStack{
                ForEach(1..<5){
                    i in
                burgers(
                    imagenBurger:"burger0\(i)",
                    nombreBurger:nombreHamburguesa[i-1],
                    precioBurger:precioHamburguesa[i-1])
                    .foregroundColor(.white)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                }
            }
            
        }
    }
}

#Preview {
    slideBurger()
}
