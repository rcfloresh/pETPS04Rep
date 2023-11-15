//
//  ContentView.swift
//  cloneFBUTEC
//
//  Created by Roberto Flores on 29/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        
        
        
        VStack {
            ScrollView(.vertical, showsIndicators: false)
            {
             Headers()
             CrearPost()
             historiaSlide()
        }
        }
    }
}

#Preview {
    ContentView()
}
