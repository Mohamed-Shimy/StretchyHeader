//
//  HomeNewGamesView.swift
//  StretchyHeader
//
//  Created by Mohamed Shemy on 06/05/2023.
//

import SwiftUI

struct HomeNewGamesView: View {
    
    let games: [Game]
    
    var body: some View {
        VStack {
            HStack {
                Text("New Games")
                    .font(.title).bold()
                Spacer()
                Button(action: {}) {
                    Text("See All").bold()
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
        
        LazyVGrid(columns: [.init()], spacing: 20) {
            ForEach(games, content: GameView.init)
        }
    }
}
