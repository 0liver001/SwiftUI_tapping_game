//
//  ContentView.swift
//  Tapgame
//
//  Created by Oliver Kalemba / BBS2H20A on 24.01.22.
//

import SwiftUI

struct TapButton: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Text("Hallo")
                .padding()
                .foregroundColor(.white)
                .background(Color(.blue))
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        })
    }
}

struct ContentView: View {
    var body: some View {
        
        
        ZStack
        {
            Color(#colorLiteral(red: 0.6981517673, green: 0.9309610128, blue: 0.9120567441, alpha: 1))
            
            VStack
            {
                Text("The Tap Game")
                    .padding(.top, 40)
                
                
                
                TapButton()
                
                
                
                Spacer()
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .previewDevice("iPad (8th generation)")
        }
    }
}
