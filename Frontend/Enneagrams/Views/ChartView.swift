//
//  ChartView.swift
//  Enneagrams
//
//  Created by Jaden Passero on 7/24/23.
//

import SwiftUI
import Charts

struct ChartView: View {
    @EnvironmentObject var model: Model
    var body: some View {
        Chart (model.chartData){
            LineMark(x: .value("Day", $0.date.getDateWithoutYear()),
                     y: .value("Level", $0.level))
        }
        .chartYScale(domain: [9, 1])
        .chartYAxisLabel("Level")
        .frame(height: 300)
        .padding()
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
