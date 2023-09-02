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
    let id = UUID()
    let level: Int
    var animate: Bool = false
    var notes: String = ""
}

class Model: ObservableObject {
    let types: [String] = ["The Reformer", "The Helper", "The Achiever", "The Individualist", "The Investigator", "The Loyalist", "The Enthusiast", "The Challenger", "The Peacemaker"]
    @Published var onboardingComplete = UserDefaults.standard.bool(forKey: "onboardingComplete")
    @Published var enneagram: Enneagram?
    @Published var chartData: [Date:Point] = [Date.from(year: 2023, month: 7, day: 19) : Point(level: 1),
                                              Date.from(year: 2023, month: 7, day: 20) : Point(level: 3),
                                              Date.from(year: 2023, month: 7, day: 21) : Point(level: 5),
                                              Date.from(year: 2023, month: 7, day: 22) : Point(level: 4),
                                              Date.from(year: 2023, month: 7, day: 23) : Point(level: 6),
                                              Date.from(year: 2023, month: 7, day: 24) : Point(level: 3),
                                              Date.from(year: 2023, month: 7, day: 25) : Point(level: 3),
                                              Date.from(year: 2023, month: 7, day: 26) : Point(level: 8),
                                              Date.from(year: 2023, month: 7, day: 27) : Point(level: 4),
                                              Date.from(year: 2023, month: 7, day: 28) : Point(level: 1),
                                              Date.from(year: 2023, month: 7, day: 29) : Point(level: 2),
                                              Date.from(year: 2023, month: 7, day: 30) : Point(level: 5),
                                              Date.from(year: 2023, month: 7, day: 31) : Point(level: 2)]
    @Published var todaysRating: Double = 1
    
    init() {
        if let data = UserDefaults.standard.object(forKey: "enneagram") as? Data {
            self.enneagram = try? JSONDecoder().decode(Enneagram.self, from: data)
        }
        //Grab chartData from userDefaults
        //TODO
        
        //Set today's point
        self.chartData[Date().justDate()] = Point(level: 9)
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
    
    func setToday(notes: String){
        self.chartData[Date().justDate()] = Point(level: 10-Int(self.todaysRating), animate: true, notes: notes)
        //Update chartData in UserDefaults
    }
}
