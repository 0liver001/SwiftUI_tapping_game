//
//  ContentView.swift
//  Tapgame
//
//  Created by Oliver Kalemba / BBS2H20A on 24.01.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        ZStack
        {
            Color(#colorLiteral(red: 0.6981517673, green: 0.9309610128, blue: 0.9120567441, alpha: 1))
            
            VStack
            {
                Text("The Tap Game")
                    .padding(.top, 40)
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
