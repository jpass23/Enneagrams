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
                Spacer()
                HStack{
                    ForEach(enneagram.descriptors, id: \.self){ adj in
                        Text("\(adj) ")
                    }
                }
                VStack (alignment: .leading){
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
