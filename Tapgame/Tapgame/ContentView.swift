//
//  ContentView.swift
//  Tapgame
//
//  Created by Oliver Kalemba / BBS2H20A on 24.01.22.
//

import SwiftUI

struct TapNumber : View {
    var body: some View {
        Text("0")// <-- Der sollte eigentlich zählen wie oft der Button gedrückt wurde:/
            .scaleEffect(5)
            .foregroundColor(Color(#colorLiteral(red: 0.5385078192, green: 0.8231666088, blue: 0.8190583587, alpha: 1)))
    }
}

struct TapButton: View {
    
    var body: some View {
        Button(action: {
            // Hier sollte er eigentlich zählen und sich repositionieren
            self.body.offset(
                x: CGFloat(Int.random(in: 1..<500) - 250),
                y: CGFloat(Int.random(in: 1..<500) - 250)
            )
        }, label: {
            Text("Hallo")
                .padding()
                .foregroundColor(.white)
                .background(Color(.blue))
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        })
    }
}

extension View {
    
    func replace() -> some View {
        // self.modifier(offset(x:-100))
        // self.offset(x:CGFloat((Int.random(in: 1..<100))))
        return self
    }
}

struct ContentView: View {
    @State var counter = 0
    
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
    
    func count() -> Void {
        
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
