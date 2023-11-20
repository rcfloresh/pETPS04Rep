//
//  mostrarMenu.swift
//  parcial4-2504652019
//
//  Created by Rosa Herrera on 19/11/23.
//

import SwiftUI

struct mostrarMenu: View {
    
    @State private var isCarruHamburguesa = false
    @State private var isCarruPollo = false
    @State private var isCarruPizza = false
    
    var body: some View{
            VStack{
                Text("Ventas")
                    .font(.system(size: 25, weight:.bold))
            }.frame(width:300, alignment: .leading)
            
            HStack{
                
                ZStack{
                    Button(action: {
                        isCarruHamburguesa.toggle()
                    },
                           label : {
                        Image(.hamburguesaIcon)
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
                        isCarruPollo.toggle()
                    },
                           label : {
                        Image(.polloIcon)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                    }).frame(width: 100, height: 100)
                    Text("Pollo")
                        .padding(.top, 70)
                }.background(.orange)
                    .clipShape(Rectangle())
                    .cornerRadius(20)
                    .shadow(radius: 20)
                
                ZStack{
                    Button(action: {
                        isCarruPizza.toggle()
                    },
                           label : {
                        Image(.pizzaIcon)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                    }).frame(width: 100, height: 100)
                    Text("Pizza")
                        .padding(.top, 70)
                }.background(.orange)
                    .clipShape(Rectangle())
                    .cornerRadius(20)
                    .shadow(radius: 20)
            }
            NavigationView{
                VStack {
                    if(isCarruHamburguesa){
                        NavigationLink(                                            destination: carruHamburguesa(),
                                                                                   isActive: $isCarruHamburguesa
                        ) {
                            EmptyView()
                        }
                    }
                    else if(isCarruPollo)
                    {
                        NavigationLink(
                            destination: carruPollo(),
                            isActive: $isCarruPollo
                        ) {
                            EmptyView()
                        }
                    }
                    else if(isCarruPizza)
                    {
                        NavigationLink(
                            destination: carruPizza(),
                            isActive: $isCarruPizza
                        ) {
                            EmptyView()
                        }
                    }
                    
                    
                }
            }
            
            
        }
    }


#Preview {
    mostrarMenu()
}
