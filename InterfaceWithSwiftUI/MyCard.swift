//
//  MyCard.swift
//  InterfaceWithSwiftUI
//
//  Created by PNT001 on 2022/10/19.
//


import SwiftUI

struct MyCard: View {
    
    var title: String
    var icon: String
    var start: String
    var end: String
    var bgColour: Color
    
    
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            VStack(alignment: .leading, spacing: 0) {
                Divider().opacity(0)
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(Color.white)
                Spacer().frame(height: 5)
                Text("\(start) - \(end)")
                    .foregroundColor(.white)
            }
            
            
            
        }
        
        .padding()
        .background(bgColour)
        .cornerRadius(20)
    }
}

struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(title: "Test title", icon: "book.fill", start: "7 : 00", end: "8 : 00", bgColour: .purple)
    }
}
