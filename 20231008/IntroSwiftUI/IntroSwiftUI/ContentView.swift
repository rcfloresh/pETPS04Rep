//
//  ContentView.swift
//  IntroSwiftUI
//
//  Created by Roberto Flores on 8/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack{
            
            Text("ETPS4! - UTEC").font(.largeTitle).foregroundColor(.green)
                    Text("Roberto Flores").font(.title2).foregroundColor(.blue)
                    Text("25 - 3089 - 2009").font(.title3).foregroundColor(.red)
        }.padding(.bottom, 40.0)
        
        VStack(alignment: .leading, spacing: 8) {
            Text("ETPS 4").font(.largeTitle).bold()
            
            Text("Ciclo 02-2023").foregroundColor(.gray).bold()
        }
        
        HStack(alignment: .top, spacing: 2){
            //Rectangle().foregroundColor(.green).frame(width:100, height: 100)
            
            Image("brand")
                .resizable().scaledToFit().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
            
            VStack (alignment: .leading, spacing: 8){
                HStack{
                    Circle().frame(width:25, height: 25)
                    Text("Laboratorio 2").foregroundColor(.gray).bold()
                }
                
                Text("Domingo 10:00 - 13:00").foregroundColor(.gray).bold()
                Text("Sección 01").foregroundColor(.gray).bold()
            }
            
            }
        }
}


#Preview {
    ContentView()
}
