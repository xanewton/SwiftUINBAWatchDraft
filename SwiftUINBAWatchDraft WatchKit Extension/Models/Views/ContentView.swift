//
//  ContentView.swift
//  SwiftUINBAWatchDraft WatchKit Extension
//
//  Created by newtan on 2021-02-16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach(0..<2) { _ in
                DraftRoundItemView()
            }
        }
        .listStyle(CarouselListStyle())
        .navigationBarTitle(Text("NBA Draft"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
