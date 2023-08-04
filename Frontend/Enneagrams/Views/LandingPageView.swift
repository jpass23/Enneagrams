//
//  LandingPageView.swift
//  Enneagrams
//
//  Created by Jaden Passero on 7/24/23.
//

import SwiftUI

struct LandingPageView: View {
    @EnvironmentObject var model: Model
    @State var showNotes: Bool = false
    var body: some View {
        VStack{
            ChartView()
            Text("Today you feel like a \(model.chartData[Date().justDate()]?.level ?? 0)")
                .foregroundColor(.secondary)
            Slider(value: $model.todaysRating, in: 1...9, step: 1)
                .onChange(of: model.todaysRating) { _ in
                    model.setToday()
            }.font(.caption)

            Text(model.enneagram?.levels[model.chartData[Date().justDate()]!.level] ?? "") //EDGE CASE: Error here if date that app is opnened is different than date that slider is interacted with
            
            Spacer()
            
            Button{
                showNotes.toggle()
            }label: {
                Text("Notes")
            }.buttonStyle(.bordered)
        }
        .padding()
        .navigationTitle("\(model.enneagram?.name ?? "")")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink{
                        SettingsView()
                    }label: {
                        Image(systemName: "gear")
                            .foregroundColor(.primary)
                    }
                }
            }
            .sheet(isPresented: $showNotes) {
                Text("Here are some notes")
            }
    }
}

//struct LandingPageView_Previews: PreviewProvider {
//    static var previews: some View {
//        LandingPageView()
//    }
//}
