//
//  ContentView.swift
//  Parcial4_2530892009
//
//  Created by Roberto Flores on 19/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            ZStack {
                colorFondo()
            
            VStack{
                logoBusqueda()
                comidaMenu()
                
            }
            }
        }
    }
}

#Preview {
    ContentView()
}
