//
//  ContentView.swift
//  componentes
//
//  Created by Roberto Flores on 15/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "battery.100.bolt")
                //.renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
                .shadow(radius: 5)
            
            Label("ETPS4", systemImage: "moon.circle.fill")
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .font(.title)
                .shadow(radius: 5)
                //.labelStyle(TitleOnlyLabelStyle())
                .labelStyle(IconOnlyLabelStyle())
            
            Text("Ciclo 02-2023")
                .font(.largeTitle)
                .underline()
                .frame(width: 200)
                .lineLimit(2)
                .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0,z: 0))
                .shadow(color: .gray, radius: 2, x:0, y:15)
            
            
            Text("ETPS4")
                . font(.largeTitle)
                .underline()
                .foregroundColor(.red)
            + Text("Ciclo 02-2023")
                .font(.body)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            + Text("UTEC")
                .font(.body)
                .bold()
            + Text ("Laboratorio de informatica 2")
                .font(.headline)
                .foregroundColor(.green)
        }
        .padding()
        
        VStack{
            Text(Date(), style: .date)
            Text(Date(), style: .time)
            Text(Date(), style: .relative)
            Text(Date(), style: .timer)
        }
        
        Button(action:{print("Electiva 4 UTEC")},
               label : {
            Text("ETPS 4".uppercased())
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
                .background(Color.red)
                .cornerRadius(10)
                .shadow(radius: 10)
        })
        
        Button(action: {
            print("Electiva 4 UTEC")},
               label: {
                Circle()
                .fill(Color.blue)
                .frame(width: 200, height: 200)
                .shadow(radius: 10)
                .overlay(
                    Image(systemName: "cpu")
                        .foregroundColor(.white)
                        .font(.system(
                                size: 70, weight:.bold))
                        )
                    }
            )
    }
}

#Preview {
    ContentView()
}
