//
//  TLButton.swift
//  ToDoList
//
//  Created by Eliah Sand on 18/04/2025.
//

import SwiftUI

struct TLButton: View {
    
    let title : String
    let background : Color
    let action : () -> Void
    
    var body: some View {
        Button{
            //Attempt log in
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                    .bold()
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
        
    }
}

#Preview {
    TLButton(title: "Value",
             background: Color.pink){
        // action
    }
}
