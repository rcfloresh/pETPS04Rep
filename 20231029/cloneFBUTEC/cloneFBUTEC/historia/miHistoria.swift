//
//  miHistoria.swift
//  cloneFBUTEC
//
//  Created by Roberto Flores on 29/10/23.
//

import SwiftUI

struct miHistoria: View {
    var body: some View {
        ZStack(alignment: .top) {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 100,height: 170)
            ZStack (alignment: .bottom){
                Image(.profile01)
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 110)
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                VStack(spacing:0)
                {
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color.colorFB)
                        .clipShape(Circle())
                        .font(.system(size: 20,weight: .bold))
                        .overlay(Circle().stroke(Color.blue, lineWidth: 3))
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    Group{
                        Text("Agregar")
                            .foregroundColor(.white)
                            .shadow(radius: 25)
                        Text("Historia")
                            .foregroundColor(.white)
                            .shadow(radius: 25)
                    }.font(.system(size: 12, weight: .semibold))
                }
                .offset(y:45)

                
                }
            }
            
        }

    }


#Preview {
    miHistoria()
}
