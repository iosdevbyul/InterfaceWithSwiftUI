//
//  MyProjectCard.swift
//  InterfaceWithSwiftUI
//
//  Created by PNT001 on 2022/10/19.
//

import SwiftUI

struct MyProjectCard: View {
    @State var shouldShowAlert: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Text("This Week")
                .font(.system(size: 23))
                .padding(.bottom, 10)
            Text("Our Special Guests")
                .foregroundColor(.secondary)
            Spacer().frame(height: 20)
            HStack {
                Image("1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(style: StrokeStyle(lineWidth: 5)))
                        .foregroundColor(Color.red)
                Image("2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(style: StrokeStyle(lineWidth: 5)))
                        .foregroundColor(Color.red)
                Image("3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(style: StrokeStyle(lineWidth: 5)))
                        .foregroundColor(Color.red)
                Spacer()
                
                Button(action: {
                    print("Clicked")
                    self.shouldShowAlert = true
                }) {
                    Text("Donate")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 100)
                        .background(.blue)
                        .cornerRadius(20)
                }.alert(isPresented: $shouldShowAlert){
                    Alert(title: Text("Thank you"))
                }
            }
            
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}


struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
