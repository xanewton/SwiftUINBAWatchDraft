//
//  DraftPlayerDetailView.swift
//  NBAWatchDraft WatchKit Extension
//
//  Created by Craig Clayton on 12/21/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct DraftPlayerDetailView: View {
    var body: some View {
        ScrollView {
            VStack {
                DraftPlayerDetailHeaderView()
                DraftPlayerDetailStatsView()
                DraftPlayerDetailInfoView()
            }
        }
    }
}

struct DraftPlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DraftPlayerDetailView()
    }
}
