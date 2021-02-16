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
            // Add next step here
            
        }
        .navigationBarTitle(Text("By Round"))
    }
    
    // add topCard here
}

struct DraftList_Previews: PreviewProvider {
    static var previews: some View {
        DraftList()
    }
}


extension DraftList_Previews {
    
}
