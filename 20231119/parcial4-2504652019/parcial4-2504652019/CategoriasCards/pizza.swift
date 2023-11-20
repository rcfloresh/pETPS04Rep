//
//  pizza.swift
//  parcial4-2504652019
//
//  Created by Rosa Herrera on 19/11/23.
//

import SwiftUI

struct pizza: View {
    
    let fotoPizza : String
    let nombrePizza : String
    let precioPizza : String
    
    var body: some View {
        ZStack {
            colorDeFondo()
            VStack{
                Image(fotoPizza)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75, height: 75)
                Text(nombrePizza)
                Text(precioPizza)
                    .font(.system(size: 20, weight: .bold))
                    .frame(width:120, alignment: .trailing)
                    .padding(15)
                
            }.clipShape(Rectangle())
                .cornerRadius(20)
                .shadow(radius: 20)
                .frame(width: 150, height: 200)
                .background(.orange)
            .cornerRadius(20)
        }.shadow(radius: 20)
    }
}

#Preview {
    pizza(fotoPizza: "", nombrePizza: "", precioPizza: "")
}
