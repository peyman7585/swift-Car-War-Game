//
//  ContentView.swift
//  War Cart Game
//
//  Created by Peyman on 12/9/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard="card7"
    @State var cpuCard="card13"
    @State var playerScore=0
    @State var cpuScore=0
    
    var body: some View {
    
        ZStack{
           Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("player")
                            .font(.headline)
                            .padding(.bottom,10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom,10.0)
                                               
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(Color.white)
              
                Spacer()
             
                
            }
        }
      
       
    }
    func deal(){
        // Randomize the played card
        let playerCardValue=Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // randomize the cpu card
        let cpuCardValue=Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // update the score
        if playerCardValue > cpuCardValue{
            //add 1 to player score
            playerScore+=1
        }
        // add 1 to cpu score
        else if playerCardValue < cpuCardValue{
            cpuScore+=1
        }
    }
}
      
    #Preview {
        ContentView()
    }
