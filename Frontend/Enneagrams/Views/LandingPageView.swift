//
//  LandingPageView.swift
//  Enneagrams
//
//  Created by Jaden Passero on 7/24/23.
//

import SwiftUI

struct LandingPageView: View {
    @EnvironmentObject var model: Model
    var body: some View {
        VStack{
            ChartView()
        }.navigationTitle("\(model.enneagram?.name ?? "")")
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
    }
}

//struct LandingPageView_Previews: PreviewProvider {
//    static var previews: some View {
//        LandingPageView()
//    }
//}
