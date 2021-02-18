//
//  DraftPlayerDetailView.swift
//  NBAWatchDraft WatchKit Extension
//
//  Created by Craig Clayton on 12/21/19.
//  Copyright © 2019 Cocoa Academy. All rights reserved.
//

import SwiftUI

struct DraftPlayerDetailView: View {
    var prospect: Prospect

    var body: some View {
        ScrollView {
            VStack {
                DraftPlayerDetailHeaderView(prospect: prospect)
                DraftPlayerDetailStatsView(prospect: prospect)
                DraftPlayerDetailInfoView(prospect: prospect)
            }
        }
    }
}

struct DraftPlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DraftPlayerDetailView(prospect: Prospect(firstName: "Craig", lastName: "Clayton", position: "PG", ht: 85, wt: 235, image: "", experience: "", birthPlace: "", analysis: "", round: 1, draftPosition: 1, school: "", team: Team(name: "Lakers", market: "Los Angeles"), stats: []))
    }
}
