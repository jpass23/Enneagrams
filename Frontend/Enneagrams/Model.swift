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
    var descriptorsString = ""
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.number = try container.decode(Int.self, forKey: .number)
        self.name = try container.decode(String.self, forKey: .name)
        self.descriptors = try container.decode([String].self, forKey: .descriptors)
        self.fear = try container.decode(String.self, forKey: .fear)
        self.desire = try container.decode(String.self, forKey: .desire)
        self.levels = try container.decode([Int : String].self, forKey: .levels)
        self.url = try container.decode(String.self, forKey: .url)
        for i in 1..<descriptors.count {
            if i == descriptors.count-1{
                self.descriptorsString.append("\(descriptors[i])")
            }else{
                self.descriptorsString.append("\(descriptors[i]), ")
            }
            
        }
        
    }
}

struct Point: Identifiable{
    var id = UUID()
    
    let date: Date
    let level: Int
}

class Model: ObservableObject {
    let types: [String] = ["The Reformer", "The Helper", "The Achiever", "The Individualist", "The Investigator", "The Loyalist", "The Enthusiast", "The Challenger", "The Peacemaker"]
    @Published var onboardingComplete = UserDefaults.standard.bool(forKey: "onboardingComplete")
    @Published var enneagram: Enneagram?
    @Published var chartData: [Point] = [Point(date: Date(timeIntervalSinceNow: -100000), level: 3), Point(date: Date(timeIntervalSinceNow: -5000), level: 8), Point(date: Date(), level: 4)]
    
    init() {
        if let data = UserDefaults.standard.object(forKey: "enneagram") as? Data {
            self.enneagram = try? JSONDecoder().decode(Enneagram.self, from: data)
        }
    }
    
    func setEnneagram(to enneagram: Enneagram){
        self.enneagram = enneagram
        self.onboardingComplete = true
        UserDefaults.standard.set(true, forKey: "onboardingComplete")
        if let encoded = try? JSONEncoder().encode(enneagram) {
            UserDefaults.standard.set(encoded, forKey: "enneagram")
        }
    }
    
    func deleteEnneagram(){
        self.enneagram = nil
        self.onboardingComplete = false
        UserDefaults.standard.set(false, forKey: "onboardingComplete")
        UserDefaults.standard.set(nil, forKey: "enneagram")
    }
}
