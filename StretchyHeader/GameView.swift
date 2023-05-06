//
//  GameView.swift
//  StretchyHeader
//
//  Created by Mohamed Shemy on 04/05/2023.
//

import SwiftUI

struct GameView: View {
    
    let game: Game
    
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: "gamecontroller.fill")
                .foregroundColor(.white)
                .shadow(radius: 5)
                .frame(minWidth: 50, minHeight: 50)
                .linearGradient([.green, .purple, .pink], start: .topTrailing, end: .bottomLeading)
                .cornerRadius(5)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(game.title).bold()
                
                Text(game.subTitile)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            VStack {
                Button("Get") {
                    print("Get")
                }
                .padding(.horizontal, 15)
                .padding(.vertical, 5)
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(Capsule())
                
                if game.inAppPurchases {
                    Text("In-App\nPurchases")
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                }
            }
        }
        .padding()
        .background(Color.secondarySystemBackground)
        .cornerRadius(10)
    }
    
    init(_ game: Game) {
        self.game = game
    }
}

struct GameView_Previews: PreviewProvider {
    
    static var previews: some View {
        GameView(.example)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
