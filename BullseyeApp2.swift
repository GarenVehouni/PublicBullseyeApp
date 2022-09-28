//
//  ContentView.swift
//  Bullseye
//
//  Created by Mac on 6/22/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var knockVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    @State private var game: Game = Game()
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text("🎯🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO ").kerning(2.0).bold().multilineTextAlignment(.center)
                        .lineSpacing(4.0).font(.footnote)
                    Text(String(game.target)).fontWeight(.black)
                }
                HStack {
                    Text("1").fontWeight(.heavy)
                    
                    Slider(value: self.$sliderValue ,in:1.0...100.0)
                    Text("100").fontWeight(.heavy)
                }
                Button(action: {
                    print("Bonjour world!")
                    self.alertIsVisible = true
                } )
                {
                    Text("Hit Me!")
                }
                //bellow generates a pop up
                .alert(isPresented: $alertIsVisible, content: {
                    
                    let roundedValue: Int = Int(self.sliderValue.rounded())
                    return Alert(title: Text("Hello there!"), message: Text("The slider's value is \(roundedValue)\n" + "You scored \(self.game.points(sliderValue: roundedValue)) points this round."), dismissButton:
                        .default(Text("Awesome!")))
            } )
                
            }
            Button(action: {
                self.knockVisible = true
            } )
            {
                Text("Knock Knock!")
            }
            //bellow generates a pop up for "knock knock"
            .alert(isPresented: $knockVisible, content: {
                return Alert(title: Text("Who there??"), message: Text("Doorbell Delivery"), dismissButton: .default(Text("HAHA")))
            })
        }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
