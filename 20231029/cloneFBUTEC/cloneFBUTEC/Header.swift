//
//  Header.swift
//  cloneFBUTEC
//
//  Created by Roberto Flores on 29/10/23.
//

import Foundation

struct Header : View{
    var body: some View{
        HStack{
            Image("FacebooLogo")
                .resizable()
                .scaledToFit()
                .frame(width:100, height:100)
        }
    }
}

