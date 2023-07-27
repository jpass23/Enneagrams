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

extension Date {
    func getDateWithoutYear() -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd"
        let str = dateFormatter.string(from: self)
        if str[str.startIndex] != "0"{
            return str
        }else{
            return String(str.dropFirst(1))
        }
        
    }
    static func from(year: Int, month: Int, day: Int) -> Date{
        let componants = DateComponents(year: year, month: month, day: day)
        return Calendar.current.date(from: componants)!
    }
    func justDate() -> Date{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy"
        let year = Int(dateFormatter.string(from: self))!
        dateFormatter.dateFormat = "MM"
        let month = Int(dateFormatter.string(from: self))!
        dateFormatter.dateFormat = "dd"
        let day = Int(dateFormatter.string(from: self))!
        return Date.from(year: year, month: month, day: day)
    }
}

