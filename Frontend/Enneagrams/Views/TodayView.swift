//
//  TodayView.swift
//  Enneagrams
//
//  Created by Jaden Passero on 9/2/23.
//

//Refactor so that this only depends on the date passed in so that it can be used in history view too
import SwiftUI

struct TodayView: View {
    @EnvironmentObject var model: Model
    @State var showNotes: Bool = false
    @State var notes: String = "Click to add notes"
    let date: Date = Date()
    let placeholderString = "Click to add notes"
    var body: some View {
        VStack{
            Text("Today you feel like a \(model.chartData[date.justDate()]?.level ?? 0)")
                .foregroundColor(.secondary)
            
            Slider(value: $model.todaysRating, in: 1...9, step: 1)
                .onChange(of: model.todaysRating) { _ in
                    model.setToday(notes: self.notes)
            }.font(.caption)
            
            TextEditor(text: $notes)
                .foregroundColor(self.notes == placeholderString ? .gray : .primary)
                .onTapGesture {
                    if self.notes == placeholderString {
                        self.notes = ""
                    }
                }
            //Text(model.enneagram?.levels[model.chartData[Date().justDate()]!.level] ?? "") //EDGE CASE: Error here if date that app is opnened is different than date that slider is interacted with
            
            Spacer()
            
            Button{
                model.setToday(notes: self.notes)
            }label: {
                Text("Save")
            }.buttonStyle(.bordered)
        }
        .padding()
        .navigationTitle("\(model.enneagram?.name ?? "")")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink{
                        SettingsView()
                    }label: {
                        Image(systemName: "gear")
                            .foregroundColor(.primary)
                    }
                }
            }
            .sheet(isPresented: $showNotes) {
                Text("Here are some notes")
            }
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
