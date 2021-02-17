//
//  DraftList.swift
//  NBAWatchDraft WatchKit Extension
//
//  Created by Craig Clayton on 12/19/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//
import SwiftUI

struct DraftList: View {
    @State private var currentIndex = 0.0
    @State private var isShowingDetail = false
    private let numberOfVisibleCards = 3
    private let testPicks = 10
    
    var body: some View {
        VStack(spacing: 10) {
            VStack(spacing: 0) {
                Text("ROUND 1")
                    .custom(font: .bold, size: 20)
                Divider()
            }
            
            ZStack {
                ForEach((0...testPicks).reversed(), id: \.self) { index in
                    fullCard
                        .cardTransformed(self.currentIndex, card: index)
                        .onTapGesture {
                            self.isShowingDetail.toggle()
                        }
                        .sheet(isPresented: self.$isShowingDetail) {
                            DraftPlayerDetailView()
                        }
                }
            }
            .focusable(true)
            .digitalCrownRotation(
                $currentIndex.animation(),
                from: 0.0,
                through: Double(testPicks - 1),
                by: 1.0,
                sensitivity: .low
            )
        }
        .navigationBarTitle(Text("By Round"))
    }
    
    var topCard: some View {
        HStack {
            Image("pelicans").frame(height: 56)
            Spacer()
            Text(String(format: "%02d", 1))
                .custom(font: .bold, size: 50)
        }
        .frame(height: 48)
        .background(Color("pelicans"))
    }
    
    var bottomCard: some View {
        VStack(spacing: -5) {
            Text("ZION")
                .custom(font: .ultralight, size: 13)
            Text("WILLIAMS")
                .custom(font: .bold, size: 20)
            Text("POWER FORWARD")
                .custom(font: .ultralight, size: 10)
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(height: 60, alignment: .center)
        .background(Color.white)
        .foregroundColor(.black)
    }

    var fullCard: some View {
        VStack(alignment: .leading, spacing: -3) {
            topCard
            bottomCard
        }
    }
}

struct DraftList_Previews: PreviewProvider {
    static var previews: some View {
        DraftList()
    }
}


extension DraftList_Previews {
    
}
