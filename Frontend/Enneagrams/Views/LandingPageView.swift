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
        Text("Landing Page for \(model.enneagram?.name ?? "")")
        Button ("Switch Enneagram"){
            model.deleteEnneagram()
        }
    }
}

struct LandingPageView_Previews: PreviewProvider {
    static var previews: some View {
        LandingPageView()
    }
}
