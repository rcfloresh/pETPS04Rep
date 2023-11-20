//
//  comidaMenu.swift
//  Parcial4_2530892009
//
//  Created by Roberto Flores on 19/11/23.
//

import SwiftUI

struct comidaMenu: View {
    @State private var isShowingSlideBurger = false
    @State private var isShowingSlideTaco = false
    @State private var isShowingSlideTorta = false
    
    var body: some View {
        VStack{
            Text("Ventas")
                .font(.system(size: 25, weight:.bold))
        }.frame(width:300, alignment: .leading)
        
        HStack{
            
            ZStack{
                Button(action: {
                    isShowingSlideBurger.toggle()
                },
                       label : {
                    Image(.burgerIcon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                }).frame(width: 100, height: 100)
                Text("Hamburguesa")
                    .font(.system(size: 13))
                    .padding(.top, 70)
            }.background(.orange)
                .clipShape(Rectangle())
                .cornerRadius(20)
                .shadow(radius: 20)

            ZStack{
                Button(action: {
                    isShowingSlideTaco.toggle()
                },
                       label : {
                    Image(.tacoIcon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                }).frame(width: 100, height: 100)
                Text("Tacos")
                    .padding(.top, 70)
            }.background(.orange)
                .clipShape(Rectangle())
                .cornerRadius(20)
                .shadow(radius: 20)
            
            ZStack{
                Button(action: {
                    isShowingSlideTorta.toggle()
                },
                       label : {
                    Image(.tortaIcon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                }).frame(width: 100, height: 100)
                Text("Torta")
                    .padding(.top, 70)
            }.background(.orange)
                .clipShape(Rectangle())
                .cornerRadius(20)
                .shadow(radius: 20)
        }
            NavigationView{
                VStack {
                    if(isShowingSlideBurger){
                        NavigationLink(                                            destination: slideBurger(),
                                                                                   isActive: $isShowingSlideBurger
                                            ) {
                                                EmptyView()
                                        }
                    }
                    else if(isShowingSlideTaco)
                    {
                        NavigationLink(
                                                destination: slideTaco(),
                                                isActive: $isShowingSlideTaco
                                            ) {
                                                EmptyView()
                                        }
                    }
                    else if(isShowingSlideTorta)
                    {
                        NavigationLink(
                                                destination: slideTorta(),
                                                isActive: $isShowingSlideTorta
                                            ) {
                                                EmptyView()
                                        }
                    }
                    
                    
                }
            }
        
        
    }
}

#Preview {
    comidaMenu()
}
