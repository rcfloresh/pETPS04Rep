//
//  CrearPost.swift
//  cloneFBUTEC
//
//  Created by Roberto Flores on 29/10/23.
//

import SwiftUI

struct CrearPost: View {
    var body: some View {
        VStack{
            HStack{
                Image(.profile01)
                    .resizable()
                    .scaledToFit()
                    .frame(width:70, height: 60)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Text("Qué piensas este día?")
                Spacer()
            }.padding(.horizontal)
            
            Rectangle()
                .frame(width:UIScreen.main.bounds.width ,height: 1)
                .foregroundColor(.colorFB)
            
            HStack{
                Spacer()
                HStack{
                    Image(systemName: "video.fill")
                        .foregroundColor(.red)
                    Text("Live")
                
                }
                Spacer()
                HStack{
                    Image(systemName: "photo")
                        .foregroundColor(.green)
                    Text("Photo")
                
                }
                Spacer()
                Rectangle()
                    .frame(width: 1, height: 20)
                    .foregroundColor(.colorFB)
                
                Group {
                    HStack{
                        Image(systemName: "video.fill")
                            .foregroundColor(.purple)
                        Text("Room")
                    
                    }
                }
                Spacer()
            }
            .font(.system(size: 14, weight: .semibold))
        }
    }
}

#Preview {
    CrearPost()
}
