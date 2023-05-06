//
//  HomeModel.swift
//  StretchyHeader
//
//  Created by Mohamed Shemy on 04/05/2023.
//

import Foundation

struct Game: Identifiable {
    
    let id: UUID = UUID()
    let title: String
    let subTitile: String
    let inAppPurchases: Bool
}

extension Game {
    
    static let example = Game(title: "Zombie Gunship Survival", subTitile: "Tour the apocatypse", inAppPurchases: .random())
}

final class HomeModel: ObservableObject {
    
    @Published private(set) var games: [Game] = []
    
    func loadGames() {
        games = [
            Game(title: "Zombie Gunship Survival", subTitile: "Tour the apocatypse", inAppPurchases: .random()),
            Game(title: "Portal", subTitile: "Travel through dimensions", inAppPurchases: .random()),
            Game(title: "Wave Form", subTitile: "Fun engaging wave game", inAppPurchases: .random()),
            Game(title: "Temple Run", subTitile: "Run for your life", inAppPurchases: .random()),
            Game(title: "World of Warcrat", subTitile: "Be whoever you want", inAppPurchases: .random()),
            Game(title: "Alto's Adventure", subTitile: "A snowboarding odyssey", inAppPurchases: .random()),
            Game(title: "Space Frog", subTitile: "Jump and have fun", inAppPurchases: .random()),
            Game(title: "Zombie Gunship Survival", subTitile: "Tour the apocatypse", inAppPurchases: .random()),
            Game(title: "Portal", subTitile: "Travel through dimensions", inAppPurchases: .random()),
            Game(title: "Wave Form", subTitile: "Fun engaging wave game", inAppPurchases: .random()),
            Game(title: "Temple Run", subTitile: "Run for your life", inAppPurchases: .random()),
            Game(title: "World of Warcrat", subTitile: "Be whoever you want", inAppPurchases: .random()),
            Game(title: "Alto's Adventure", subTitile: "A snowboarding odyssey", inAppPurchases: .random()),
            Game(title: "Space Frog", subTitile: "Jump and have fun", inAppPurchases: .random()),
            Game(title: "Zombie Gunship Survival", subTitile: "Tour the apocatypse", inAppPurchases: .random()),
            Game(title: "Portal", subTitile: "Travel through dimensions", inAppPurchases: .random()),
            Game(title: "Wave Form", subTitile: "Fun engaging wave game", inAppPurchases: .random()),
            Game(title: "Temple Run", subTitile: "Run for your life", inAppPurchases: .random()),
            Game(title: "World of Warcrat", subTitile: "Be whoever you want", inAppPurchases: .random()),
            Game(title: "Alto's Adventure", subTitile: "A snowboarding odyssey", inAppPurchases: .random()),
            Game(title: "Space Frog", subTitile: "Jump and have fun", inAppPurchases: .random()),
            Game(title: "Zombie Gunship Survival", subTitile: "Tour the apocatypse", inAppPurchases: .random()),
            Game(title: "Portal", subTitile: "Travel through dimensions", inAppPurchases: .random()),
            Game(title: "Wave Form", subTitile: "Fun engaging wave game", inAppPurchases: .random()),
            Game(title: "Temple Run", subTitile: "Run for your life", inAppPurchases: .random()),
            Game(title: "World of Warcrat", subTitile: "Be whoever you want", inAppPurchases: .random()),
            Game(title: "Alto's Adventure", subTitile: "A snowboarding odyssey", inAppPurchases: .random()),
            Game(title: "Space Frog", subTitile: "Jump and have fun", inAppPurchases: .random()),
            Game(title: "Zombie Gunship Survival", subTitile: "Tour the apocatypse", inAppPurchases: .random()),
            Game(title: "Portal", subTitile: "Travel through dimensions", inAppPurchases: .random()),
            Game(title: "Wave Form", subTitile: "Fun engaging wave game", inAppPurchases: .random()),
            Game(title: "Temple Run", subTitile: "Run for your life", inAppPurchases: .random()),
            Game(title: "World of Warcrat", subTitile: "Be whoever you want", inAppPurchases: .random()),
            Game(title: "Alto's Adventure", subTitile: "A snowboarding odyssey", inAppPurchases: .random()),
            Game(title: "Space Frog", subTitile: "Jump and have fun", inAppPurchases: .random())
        ]
    }
}
