//
//  HeaderView.swift
//  ToDoList
//
//  Created by Eliah Sand on 17/04/2025.
//

import SwiftUI

struct HeaderView: View {
    
    let title : String
    let subtitle : String
    let angle : Double
    let background : Color
    
    
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius:0)
                .foregroundStyle(background)
                .rotationEffect(Angle(degrees: angle))
                
            
            VStack{
                Text(title)
                    .font(.system(size : 50))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text(subtitle)
                    .font(.system(size : 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width*3, height: 350)
        .offset(y : -150)
    }
}

#Preview {
    HeaderView(title: "Title",
               subtitle: "Subtitle",
               angle: 15,
               background: Color.pink)
}
