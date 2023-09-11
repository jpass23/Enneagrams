//
//  LandingPageView.swift
//  Enneagrams
//
//  Created by Jaden Passero on 7/24/23.
//

import SwiftUI

struct LandingPageView: View {
    @EnvironmentObject var model: Model
    @State var selection = 2
    var body: some View{
        TabView(selection: $selection) {
            HistoryView().tabItem {
                Image(systemName: "clock.arrow.circlepath")
            }.tag(1)
            TodayView().tabItem {
                Image(systemName: "mappin.and.ellipse")
            }.tag(2)
            ChartPageView().tabItem {
                Image(systemName: "chart.xyaxis.line")
            }.tag(3)
        }.navigationTitle(model.enneagram?.name ?? "")
    }
}

//struct LandingPageView_Previews: PreviewProvider {
//    static var previews: some View {
//        LandingPageView()
//    }
//}
