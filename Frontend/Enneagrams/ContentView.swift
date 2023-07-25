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
        Group{
            if model.onboardingComplete{
                LandingPageView()
            }else{
                ChooseEnneagramView()
            }
        }
        .environmentObject(model)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
