//
//  Headers.swift
//  cloneFBUTEC
//
//  Created by Roberto Flores on 29/10/23.
//

import SwiftUI

struct Headers : View{
    var body: some View{
        HStack{
            Image(.logoFB)
                .resizable()
                .scaledToFit()
                .frame(width:150, height:60)
            Spacer()
            Image(systemName: "magnifyingglass")
                .font(.system(size: 18))
                .padding(8)
                .background(Color.colorFB)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
        
            Image(systemName: "message.fill")
                .padding(8)
                .background(Color.colorFB)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
        }.padding(.horizontal)
    }
}



#Preview {
    Headers()
}
