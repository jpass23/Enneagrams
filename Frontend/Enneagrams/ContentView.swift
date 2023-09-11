//
//  ContentView.swift
//  Enneagrams
//
//  Created by Jaden Passero on 7/24/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var model = Model()
    
    var body: some View {
        NavigationStack{
            LandingPageView()
                .sheet(isPresented: $model.onboardingComplete.negate) {
                    ChooseEnneagramView().interactiveDismissDisabled(true)
                }
                .sheet(isPresented: $model.hasRatedToday.negate) {
                    NavigationStack {
                        RateView()
                    }
                }.interactiveDismissDisabled(true)
        }
        .environmentObject(model)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
