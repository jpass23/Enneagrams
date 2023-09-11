//
//  RateView.swift
//  Enneagrams
//
//  Created by Jaden Passero on 9/2/23.
//

import SwiftUI

struct RateView: View {
    @EnvironmentObject var model: Model
    @State var rating: Double = 5
    var body: some View {
        //Move slider here
        VStack() {
            Text("Rating: \(10-Int(rating))").font(.largeTitle).bold().padding(.top,100)
            Spacer()
            Text(model.enneagram?.levels[10-Int(rating)] ?? "")
            Spacer()
            HStack {
                Text("9")
                Slider(value: $rating, in: 1...9, step: 1)
                    .font(.caption)
                Text("1")
            }.padding(.bottom,100)
        }.padding(15)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button{
                    model.setDay(rating: self.rating, notes: model.chartData[Date().justDate()]?.notes ?? "")
                    model.hasRatedToday = true
                }label: {
                    Text("Done").bold()
                }
            }
        }
    }
}

struct RateView_Previews: PreviewProvider {
    static var previews: some View {
        RateView()
    }
}
