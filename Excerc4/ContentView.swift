//
//  ContentView.swift
//  Excerc4
//
//  Created by Apprenant 18 on 14/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var SelectASuit = "Select a Suit"
    var emoji: Array = ["♣︎", "♠︎", "♦︎", "♥︎"]
    
    var body: some View {
        VStack {
            Spacer()
            HStack(spacing: 50) {
                    HStack {
                        Button {
                            self.SelectASuit = emoji[0]
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 85.0, height: 60.0)
                                    .foregroundColor(.black)
                            Label("Club", systemImage: "suit.club.fill")
                        }
                    }
                    .foregroundColor(.white)
                }
                Button {
                    self.SelectASuit = emoji[1]
                    
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 110.0, height: 60.0)
                            .foregroundColor(.black)
                        HStack{
                            Image(systemName: "suit.spade.fill")
                                .foregroundColor(.white)
                            Text("Spade")
                                .foregroundColor(Color.white)
                        }
                    }
                }
            }
            Spacer()
            Text(SelectASuit)
                .font(.title)
                .foregroundColor(Color.gray)
            Spacer()
            ZStack{
                HStack(spacing: 50)  {
                    Button {
                        self.SelectASuit = emoji[2]
                    } label: {
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
                    }
                    Button {
                        self.SelectASuit = emoji[3]
                    } label: {
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
            }
            Spacer()
        }
        .padding()
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
