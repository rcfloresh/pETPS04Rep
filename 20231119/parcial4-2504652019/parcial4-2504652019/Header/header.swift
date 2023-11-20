//
//  header.swift
//  parcial4-2504652019
//
//  Created by Rosa Herrera on 19/11/23.
//

import SwiftUI

struct header: View {
    @State var combo:String=""
    var body: some View {
        Image(.logoZarco)
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .padding(15)
        
        TextField("Busca tu combo", text: $combo )
            .disableAutocorrection(true)
            .padding(8)
            .font(.headline)
            .background(Color.gray.opacity(0.7))
            .cornerRadius(25)
            .padding(.horizontal, 60)
    }
}

#Preview {
    header()
}
