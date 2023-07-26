//
//  EnneagramInfoView.swift
//  Enneagrams
//
//  Created by Jaden Passero on 7/24/23.
//

import SwiftUI

struct EnneagramInfoView: View {
    @ObservedObject var vm: EnneagramInfoViewModel
    var body: some View {
        if let enneagram = vm.enneagram{
            VStack{
                Spacer()
                Text("\(enneagram.number). \(enneagram.name)")
                    .bold()
                    .font(.title)
                    .padding(10)
                Text(enneagram.descriptorsString)
                    .italic()
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                Spacer()
                VStack (alignment: .leading, spacing: 10){
                    Text("Fear: ").bold() + Text(enneagram.fear)
                    Text("Desire: ").bold() + Text(enneagram.desire)
                }
                Spacer()
                Button{
                    vm.choose()
                }label: {
                    ZStack {
                        Capsule()
                            .frame(width: UIScreen.screenW/3, height: UIScreen.screenH/15)
                            .foregroundColor(.primary)
                        Text("Select").font(.title).bold()
                            .foregroundColor(.primary).colorInvert()
                    }
                }
                Spacer()
            }
            .font(.title3)
            .padding()
        }else{
            VStack(spacing: 10){
                ProgressView()
                Text("Loading...")
            }
        }
    }
}

//struct EnneagramInfoView_Previews: PreviewProvider {
//    static var previews: some View {
//        EnneagramInfoView(vm: EnneagramInfoViewModel(enneagramNumber: 3))
//    }
//}
