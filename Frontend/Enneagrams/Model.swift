//
//  Model.swift
//  Enneagrams
//
//  Created by Jaden Passero on 7/24/23.
//

import Foundation

struct Enneagram: Codable {
    let number: Int
    let name: String
    let descriptors: [String]
    let fear: String
    let desire: String
    let levels: [Int: String]
    let url: String
}

class Model: ObservableObject {
    @Published var onboardingComplete = UserDefaults().bool(forKey: "onboardingComplete")
    let types: [String] = ["The Reformer", "The Helper", "The Achiever", "The Individualist", "The Investigator", "The Loyalist", "The Enthusiast", "The Challenger", "The Peacemaker"]
    @Published var enneagram: Enneagram? = UserDefaults().object(forKey: "enneagram") as? Enneagram
    
    func setEnneagram(to enneagram: Enneagram){
        self.enneagram = enneagram
        self.onboardingComplete = true
        //UserDefaults().set(true, forKey: "onboardingComplete")
        //UserDefaults().set(enneagram, forKey: "enneagram")
    }
}
