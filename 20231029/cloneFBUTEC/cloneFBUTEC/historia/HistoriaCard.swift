//
//  HistoriaCard.swift
//  cloneFBUTEC
//
//  Created by Roberto Flores on 29/10/23.
//

import SwiftUI

struct HistoriaCard: View {
    let imagenNombre: String
    let perfilFoto: String
    let titulo: String
    
    @State var Scale:CGFloat=1.0
    
    var body: some View{
        ZStack{
            Image(imagenNombre)
                .resizable()
                .frame(width: 100, height: 170)
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 15))
            VStack (alignment: .leading,spacing: 100)
            {
                Image(perfilFoto)
                    .resizable()
                    .frame(width: 30, height: 35)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.blue, lineWidth: 2))
                Text(titulo)
                    .font(.system(size: 12, weight: .semibold))
                    
            }
            .padding(.leading,-40)
        }

            
    }
}

#Preview {
    HistoriaCard(imagenNombre: "historia01", perfilFoto: "profile01" , titulo: "Suruyo").foregroundColor(.white)
}
