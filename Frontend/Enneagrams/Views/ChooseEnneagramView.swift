//
//  ChooseEnneagramView.swift
//  Enneagrams
//
//  Created by Jaden Passero on 7/24/23.
//

import SwiftUI

struct ChooseEnneagramView: View {
    @EnvironmentObject var model: Model
    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                ForEach(0..<9) { num in
                    NavigationLink{
                        EnneagramInfoView(vm: EnneagramInfoViewModel(enneagramNumber: num+1, model: model))
                    } label: {
                        EnneagramBubbleView(number: num+1, name: model.types[num])
                    }
                }
            }.navigationTitle("Choose a type:")
            .interactiveDismissDisabled()
        }
    }
}

//struct ChooseEnneagramView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChooseEnneagramView()
//    }
//}
