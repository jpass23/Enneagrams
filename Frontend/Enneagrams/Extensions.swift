//
//  Extensions.swift
//  Enneagrams
//
//  Created by Jaden Passero on 7/24/23.
//

import Foundation
import SwiftUI

extension UIScreen {
    static let screenW = UIScreen.main.bounds.size.width
    static let screenH = UIScreen.main.bounds.size.height
}

extension Binding where Value == Bool {
    var negate: Binding<Value> {
        Binding<Value>(
            get: { !self.wrappedValue },
            set: { self.wrappedValue = !$0 }
        )
    }
}

