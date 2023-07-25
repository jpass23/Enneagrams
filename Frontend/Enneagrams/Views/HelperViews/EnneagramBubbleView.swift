//
//  EnneagramBubbleView.swift
//  Enneagrams
//
//  Created by Jaden Passero on 7/24/23.
//

import SwiftUI

struct EnneagramBubbleView: View {
    let number: Int
    let name: String
    var body: some View {
        ZStack {
            Capsule(style: .circular)
                .frame(width: UIScreen.screenW/3 + CGFloat(12*name.count), height: UIScreen.screenH/14)
                .foregroundColor(Color(hue: 218/365, saturation: 0.8 + (0.02*Double(number)), brightness: 1-(0.06*Double(number))))
            HStack{
                Text(String(number) + ".   " + name.uppercased())
                Image(systemName: "chevron.forward").font(.title3)
            }
            .bold()
            .font(.title2)
            .foregroundColor(Color.primary).colorInvert()
        }
    }
}

struct EnneagramBubbleView_Previews: PreviewProvider {
    static var previews: some View {
        EnneagramBubbleView(number: 1, name: "The enthusiast")
    }
}
