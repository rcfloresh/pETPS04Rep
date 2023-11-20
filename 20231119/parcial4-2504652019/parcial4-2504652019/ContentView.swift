//
//  ContentView.swift
//  parcial4-2504652019
//
//  Created by Rosa Herrera on 19/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack {
                colorDeFondo()
            
            VStack{
                header()
                mostrarMenu()
                
            }
            }
        }
    }
}

#Preview {
    ContentView()
}
