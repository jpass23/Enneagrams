//
//  ChooseEnneagramViewModel.swift
//  Enneagrams
//
//  Created by Jaden Passero on 7/24/23.
//

import Foundation
import SwiftUI

class EnneagramInfoViewModel: ObservableObject {
    // Code for making API call
    @Published var enneagram: Enneagram?
    @ObservedObject var model: Model
    
    init(enneagramNumber: Int, enneagram: Enneagram? = nil, model: Model) {
        self.enneagram = enneagram
        self.model = model
        Task{
            await loadData(enneagramNum: enneagramNumber)
        }
    }
    
    func loadData(enneagramNum: Int) async {
        guard let url = URL(string: "http://0.0.0.0:8080/enneagram/\(enneagramNum)") else {return} //Change this URL
        do {
            let (data,_) = try await URLSession.shared.data(from: url)
            let decoder = JSONDecoder()
            self.enneagram = try decoder.decode(Enneagram.self, from: data)
        } catch {
            print(error)
        }
    }
    
    func choose(){
        model.setEnneagram(to: self.enneagram!)
    }
}
