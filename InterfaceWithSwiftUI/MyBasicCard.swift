//
//  MyBasicCard.swift
//  InterfaceWithSwiftUI
//
//  Created by PNT001 on 2022/10/19.
//

import SwiftUI

struct MyBasicCard: View {
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "flame.fill")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            VStack(alignment: .leading, spacing: 0) {
                Divider().opacity(0)
                Text("The Live Show with John")
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(Color.white)
                Spacer().frame(height: 5)
                Text("7 : 30 - 9 : 30")
                    .foregroundColor(Color.white)
            }
            
            
            
        }
        
        .padding()
        .background(Color.purple)
        .cornerRadius(20)
    }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
