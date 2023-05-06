//
//  HomeAdsView.swift
//  StretchyHeader
//
//  Created by Mohamed Shemy on 06/05/2023.
//

import SwiftUI

struct HomeAdsView: View {
    
    let topPadding: CGFloat
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Image(systemName: "applelogo")
                        .imageScale(.large)
                        .font(.largeTitle)
                    
                    Text("Apple Arcade")
                        .font(.system(.title, design: .rounded))
                        .bold()
                }
                
                Text("One Month free, than $4.99/month.")
                    .foregroundColor(.secondary)
                    .font(.system(.subheadline, design: .rounded))
            }
            
            Spacer()
            
            Button("Try it Free") {
                print("try if free")
            }
            .font(.system(.headline, design: .rounded))
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
        }
        .padding(.top, topPadding)
        .padding([.bottom, .horizontal])
        .background(LinearGradient(colors: [.green, .purple, .pink],
                                   startPoint: .leading,
                                   endPoint: .trailing).opacity(0.9))
        .cornerRadius(10)
    }
}
