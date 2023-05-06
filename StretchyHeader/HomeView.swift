//
//  HomeView.swift
//  StretchyHeader
//
//  Created by Mohamed Shemy on 04/05/2023.
//

import SwiftUI
import SwiftUIKit

struct HomeView: View {
    
    @StateObject private var model = HomeModel()
    @State private var offset: CGPoint = .zero
    
    private var headerHeight: CGFloat { mainScreenSize.height / 2.2 }
    private var showTopView: Bool { offset.y >= headerHeight }
    
    var body: some View {
        GeometryReader { proxy in
            ZStack(alignment: .top) {
                IScrollView(.vertical, offset: $offset) {
                    VStack {
                        HomeHeaderView(height: headerHeight)
                            .frame(height: headerHeight)
                        
                        HomeNewGamesView(games: model.games)
                            .padding(.horizontal)
                    }
                }
                
                if showTopView {
                    HomeAdsView(topPadding: proxy.safeAreaInsets.top)
                }
            }
            .edgesIgnoringSafeArea(.top)
            .onAppear {
                model.loadGames()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    
    static var previews: some View {
        HomeView()
    }
}
