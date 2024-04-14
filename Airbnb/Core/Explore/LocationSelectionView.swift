//
//  LocationSelectionView.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 14/04/2024.
//

import SwiftUI

struct LocationSelectionView: View {
    @Binding var selOption: DestinationSearchOptions
    @Binding var destination: String
    var body: some View {
        VStack(alignment: .leading) {
            if selOption == .location {
                Text("Where to?")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                HStack {
                    Image(systemName: "magnifyingglass")
                        .imageScale(.small)
                    
                    TextField("Search destinations", text: $destination)
                        .font(.subheadline)
                }
                .frame(height: 44)
                .padding(.horizontal)
                .overlay{
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(lineWidth: 1)
                        .foregroundStyle(Color(.systemGray4))
                }
            } else {
                CollapsedPickerView(title: "Where", description: "Add destination")
            }
        }
        .customCollapsedModifier(height: selOption == .location ? 120 : 64) {
            selOption = .location
        }
    }
}

#Preview {
    LocationSelectionView(selOption: .constant(.location), destination: .constant("fsdfds"))
}
