//
//  Model.swift
//  Enneagrams
//
//  Created by Jaden Passero on 7/24/23.
//

import Foundation

class Model: ObservableObject {
    var onboardingComplete = UserDefaults().bool(forKey: "onboardingComplete")
    let types: [String] = ["The Reformer", "The Helper", "The Achiever", "The Individualist", "The Investigator", "The Loyalist", "The Enthusiast", "The Challenger", "The Peacemaker"]
}
