//
//  ContentView.swift
//  War Card Game
//
//  Created by Theo Dryden on 16/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    var body: some View {
        
    
        ZStack{
            Image("background-plain")
            
            
            VStack {
                Spacer()
                Image("logo")
                    .padding(30)
                Spacer()
                   
                
                HStack {
                    
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                        
                    
                }
                .cornerRadius(15)
                .padding(15)
               
                
                Spacer()
                
                Button(action: {
                    
                    // Generate a random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    
                    // Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
    
                  
                    // Update the score
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if cpuRand > playerRand {
                        cpuScore += 1
                    }
                    else if playerRand == cpuRand {
                        playerScore -= 1
                        cpuScore -= 1
                    }
                    
                  
                  
                    
                }, label: {
                    Image("button")
                        .padding(20)
                })
                
                   
                
                HStack {
                 
                    VStack {
                        Text("PLAYER")
                            .padding(.bottom, 10)
                        Text(String(playerScore))
                            .padding(.bottom, 10)
                    }
                    
                    .font(.callout)
                    .foregroundColor(.white)
                    .padding(30)
                    
                 
                    
                    VStack {
                        Text("CPU")
                            .padding(.bottom, 10)
                        Text(String(cpuScore))
                            .padding(.bottom, 10)
                    }
                    .font(.callout)
                    .foregroundColor(.white)
                    .padding(30)
                    
                    
                   
                }
                Spacer()
                
            }
            
        }
            
        
   
        
        
      
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
