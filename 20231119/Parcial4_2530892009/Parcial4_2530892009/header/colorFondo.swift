//
//  Header.swift
//  Parcial4_2530892009
//
//  Created by Roberto Flores on 19/11/23.
//

import SwiftUI

struct colorFondo: View {    
    var body: some View {
            Rectangle()
                .fill(.bgColorCus)
                .ignoresSafeArea()
    }
}

#Preview {
    colorFondo()
}
