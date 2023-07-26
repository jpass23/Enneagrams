//
//  SettingsView.swift
//  Enneagrams
//
//  Created by Jaden Passero on 7/26/23.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var model: Model
    @State var presendDangerDialog = false
    var body: some View {
        Form{
            Button("Change Enneagram", role: .destructive){
                presendDangerDialog.toggle()
            }
        }.confirmationDialog("Danger Dialog", isPresented: $presendDangerDialog) {
            Button("Yes", role: .destructive) { model.deleteEnneagram()}
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Are you sure you want to switch enneagrams? All data on current enneagram will be lost")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
