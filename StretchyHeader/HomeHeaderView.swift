//
//  HomeHeaderView.swift
//  StretchyHeader
//
//  Created by Mohamed Shemy on 06/05/2023.
//

import SwiftUI
import SwiftUIKit

struct HomeHeaderView: View {
    
    let height: CGFloat
    
    var body: some View {
        GeometryReader {
            let height = $0.globalMinY > 0 ? height + $0.globalMinY : height
            Image(systemName: "gamecontroller.fill")
                .imageScale(.large)
                .font(.largeTitle)
                .foregroundColor(.white)
                .shadow(radius: 5)
                .frame(maxWidth: .infinity)
                .frame(height: height)
                .linearGradient([.green, .purple, .pink], start: .leading, end: .trailing)
                .cornerRadius(15)
                .offset(y: $0.globalMinY > 0 ? -$0.globalMinY : 0)
        }
    }
}
