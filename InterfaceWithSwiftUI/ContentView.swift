//
//  ContentView.swift
//  InterfaceWithSwiftUI
//
//  Created by PNT001 on 2022/10/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "list.bullet")
                        .font(.system(size: 30))
                    Spacer()
                    Image(systemName: "person.crop.circle.fill")
                        .font(.system(size: 30))
                }.padding(20 )
                Text("The Radio Fro You")
                    .fontWeight(.bold)
                    .font(.system(size: 35))
                
                ScrollView {
                    VStack {
                        
                            
                        MyProjectCard()
                        MyCard(title: "Economic Story", icon: "newspaper.fill", start: "1 : 00", end: "3 : 00", bgColour: .red)
                        MyCard(title: "Contacting", icon: "paperplane.fill", start: "5 : 00", end: "6 : 00", bgColour: .orange)
                        MyCard(title: "Safe", icon: "figure.wave.circle.fill", start: "11 : 00", end: "12 : 00", bgColour: .blue)
                        MyCard(title: "Travel with me", icon: "airplane", start: "1 : 00", end: "3 : 00", bgColour: .green)
                        MyCard(title: "Powerful driver", icon: "car.2", start: "7 : 00", end: "8 : 00", bgColour: .brown)
                        MyCard(title: "Deliver", icon: "box.truck.fill", start: "4 : 00", end: "5 : 00", bgColour: .yellow)
                        
                    }
                }
            }.padding()
            
            
            
            
            
            
            Circle()
                .foregroundColor(Color.yellow)
                .frame(width: 60, height: 60)
                .overlay (
                    Image(systemName: "plus")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                )
                .padding(10)
                .shadow(radius: 20)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
