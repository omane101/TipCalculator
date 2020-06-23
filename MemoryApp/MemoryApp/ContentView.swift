//
//  ContentView.swift
//  MemoryApp
//
//  Created by Mohamed Omane on 6/17/20.
//  Copyright © 2020 Mohamed Omane. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUp: true)
            }
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                 RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👟")
                
            } else{
                RoundedRectangle(cornerRadius: 10.0).fill()
            }

        }
    }
}

//ZStack {
//    if isFaceUp {
//        RoundedRectangle().fill(Color.white)
//        RoundedRectangle().stroke(lineWidth: 3)
//
//    } else {
//        RoundedRectangle(cornerRadius: 10.0).fill()
//    }
//}



































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
