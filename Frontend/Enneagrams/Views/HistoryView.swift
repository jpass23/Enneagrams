//
//  HistoryView.swift
//  Enneagrams
//
//  Created by Jaden Passero on 9/2/23.
//

import SwiftUI

struct HistoryView: View {
    @EnvironmentObject var model: Model
    var body: some View {
        List{
            ForEach(Array(model.chartData.keys).sorted(), id: \.self){ date in
                NavigationLink {
                    
                }label: {
                    Text(date.getDateWithYear())
                }
            }
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
