//
//  ContentView.swift
//  Tapgame
//
//  Created by Oliver Kalemba / BBS2H20A on 24.01.22.
//

import SwiftUI

struct TapNumber : View {
    var body: some View {
        Text("0")
            .scaleEffect(5)
    }
}

struct TapButtonGUI {
    var body: some View {
        Text("Hallo")
            .padding()
            .foregroundColor(.white)
            .background(Color(.blue))
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .offset(x:0, y:0)
    }
}

struct TapButton: View {
    //let myGUI : TapButtonGUI
    var body: some View {
        Button(action: {
            self.offset(x:-100)
        }, label: {
            Text("Hallo")
                .padding()
                .foregroundColor(.white)
                .background(Color(.blue))
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                //.offset(x:0, y:0)
        })
    }
}

extension View {
    //let tb : TapButtonGUI
    
    func replace() -> some View {
        // self.modifier(offset(x:-100))
        // self.offset(x:CGFloat((Int.random(in: 1..<100))))
        return self
    }
}

struct ContentView: View {
    var body: some View {
        
        
        ZStack
        {
            Color(#colorLiteral(red: 0.6981517673, green: 0.9309610128, blue: 0.9120567441, alpha: 1))
            
            TapNumber()
            
            VStack
            {
                Text("The Tap Game")
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding(.top, 40)
                    
                
                
                
                
                
                
                
                Spacer()
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
