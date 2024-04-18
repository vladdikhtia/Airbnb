//
//  DateSelectionView.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 14/04/2024.
//

import SwiftUI

struct DateSelectionView: View {
    @Binding var selOption: DestinationSearchOptions
    @Binding var fromDate: Date
    @Binding var toDate: Date
    var body: some View {
        VStack(alignment: .leading) {
            if selOption == .dates {
                Text("When's your trip?")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                VStack{
                    DatePicker("From", selection: $fromDate, displayedComponents: .date)
                    
                    Divider()
                    
                    DatePicker("To", selection: $toDate, displayedComponents: .date)
                }
                .foregroundStyle(.gray)
                .font(.subheadline)
                .fontWeight(.semibold)
                
            } else {
                CollapsedPickerView(title: "When", description: "Add dates")
            }
        }
        .customCollapsedModifier(height: selOption == .dates ? 180 : 64) {
            selOption = .dates
        }
    }
}
#Preview {
    DateSelectionView(selOption: .constant(.dates), fromDate: .constant(.now), toDate: .constant(.distantFuture))
}
