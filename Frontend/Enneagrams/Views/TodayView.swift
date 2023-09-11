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
    @State var notes: String = "Click to add notes"
    let date: Date = Date()
    let placeholderString = "Click to add notes"
    var body: some View {
        VStack{
            Text("Today you feel like a:")
            Menu{
                MyMenu
            }label: {
                Text("\(model.chartData[date.justDate()]?.level ?? 0)")
                    .underline()
            }
            .foregroundColor(.primary)
            .font(.title)
            
            Form {
                TextEditor(text: $notes)
                    .foregroundColor(self.notes == placeholderString ? .gray : .primary)
                    .onTapGesture {
                        if self.notes == placeholderString {
                            self.notes = ""
                        }
                    }.scrollDisabled(false)
            }
            Spacer()
            
            Button{
                model.setDay(rating: Double(model.chartData[date.justDate()]!.level), notes: self.notes)
            }label: {
                Text("Save")
            }.buttonStyle(.bordered)
        }
        .padding()
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
    }
    
    @ViewBuilder var MyMenu: some View {
        Button{
            model.hasRatedToday = false
        }label: {
            Label("Change Rating", systemImage: "gobackward")
        }
    }
}

//struct TodayView_Previews: PreviewProvider {
//    static var previews: some View {
//        TodayView()
//    }
//}
