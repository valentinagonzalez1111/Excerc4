//
//  ContentView.swift
//  Excerc4
//
//  Created by Apprenant 18 on 14/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           Spacer()
            HStack(spacing: 50) {
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 85.0, height: 60.0)
                    HStack{
                        Image(systemName: "suit.club.fill")
                            .foregroundColor(.white)
                        Text("Club")
                            .foregroundColor(Color.white)
                    }
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 110.0, height: 60.0)
                    HStack{
                        Image(systemName: "suit.spade.fill")
                            .foregroundColor(.white)
                        Text("Spade")
                            .foregroundColor(Color.white)
                    }
                }
            }
            Spacer()
            Text(" Select a Suit")
                .font(.title)
                .foregroundColor(Color.gray)
            Spacer()
            ZStack{
                HStack(spacing: 50)  {
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 130.0, height: 60.0)
                            .foregroundColor(Color.red)
                        HStack{
                            Image(systemName: "suit.spade.fill")
                                .foregroundColor(.white)
                            Text("Diamond")
                                .foregroundColor(Color.white)
                        }
                    }
                    ZStack{
                     RoundedRectangle(cornerRadius: 20)
                            .frame(width: 100.0, height: 60.0)
                        .foregroundColor(Color.red)
                        HStack{
                            Image(systemName: "heart.fill")
                                .foregroundColor(.white)
                            Text("Heart")
                                .foregroundColor(Color.white)
                        }
                }
                }
            }
            Spacer()
        }
        .padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
