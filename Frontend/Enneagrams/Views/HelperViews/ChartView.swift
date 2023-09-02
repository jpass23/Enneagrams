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
    @State var timeRange: Int = 1
    var body: some View {
        VStack (alignment: .leading, spacing: 30){
            Picker(selection: $timeRange, label: Text("Picker")) {
                Text("Week").tag(1)
                Text("Month").tag(4)
                Text("Year").tag(52)
            }.pickerStyle(.segmented)
            Chart (Array(model.chartData.keys).sorted().suffix(timeRange*7), id: \.self) {
                let point = model.chartData[$0]!
                LineMark(x: .value("Day", $0.getDateWithoutYear()),
                         y: .value("Level", point.animate ? point.level : 9))
                //if $0.getDateWithoutYear() == Date().getDateWithoutYear(){
                    PointMark(x: .value("Day", $0.getDateWithoutYear()),
                              y: .value("Level", point.animate ? point.level : 9))
                //}
            }
            .chartYScale(domain: [9, 1])
            .frame(height: 200)
            .chartYAxis(.hidden)
            .chartXAxis{
                AxisMarks() { _ in
                    AxisGridLine(centered: true, stroke: StrokeStyle(dash:[5]))
                    AxisValueLabel()
                }
            }
            // MARK: For this, see https://www.youtube.com/watch?v=xS-fGYDD0qk at timestamp 10:40
//            .chartOverlay(content: { proxy in
//                GeometryReader{proxy2 in
//                    Rectangle()
//                        .fill(.clear).contentShape(Rectangle())
//                        .gesture(
//                            DragGesture()
//                                .onChanged{ value in
//                                    let location = value.location
//                                    if let day:String = proxy.value(atX: location.x){
//                                        print(day)
//                                    }
//                                }.onEnded{ value in
//
//                                }
//                        )
//                }
//            })
            .onAppear(){
                animateGraph(onAppear: true)
            }
            .onChange(of: timeRange) { _ in
                animateGraph(onAppear: false)
            }
        }
        .padding()
//        .background{
//            RoundedRectangle(cornerRadius: 10, style: .continuous)
//                .fill(.primary.shadow(.drop(radius:2))).colorInvert()
//        }
        //.shadow(radius: 5)
    }
    
    func animateGraph(onAppear: Bool) {
        if !onAppear{
            for (_,date) in Array(model.chartData.keys).sorted().enumerated() {
                model.chartData[date]?.animate = false
            }
        }
        for (_,date) in Array(model.chartData.keys).sorted().enumerated() {
            withAnimation(.easeInOut(duration: 0.8)){
                model.chartData[date]?.animate = true
            }
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
