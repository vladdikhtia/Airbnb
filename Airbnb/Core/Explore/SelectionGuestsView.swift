//
//  SelectionGuestsView.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 14/04/2024.
//

import SwiftUI

struct SelectionGuestsView: View {
    @Binding var selOption: DestinationSearchOptions
    @Binding var numGuests: Int
    var body: some View {
        VStack(alignment: .leading) {
            if selOption == .guests {
                Text("Who's coming?")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Stepper("^[\(numGuests) Adult](inflect:true)", value: $numGuests,in:1...10, step: 1)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
            } else {
                CollapsedPickerView(title: "Who", description: "Add guests")
            }
        }
        .customCollapsedModifier(height: selOption == .guests ? 120 : 64) {
            selOption = .guests
        }
    }
}

#Preview {
    SelectionGuestsView(selOption: .constant(.guests), numGuests: .constant(2))
}
