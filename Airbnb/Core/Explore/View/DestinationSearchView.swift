//
//  DestinationSearchView.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 14/04/2024.
//

import SwiftUI


enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State var destination = ""
    @State var fromDate = Date()
    @State var toDate = Date()
    @State var numGuests = 1
    
    @State var selectedOption: DestinationSearchOptions = .location
    
    var body: some View {
        VStack {
            HStack{
                Button{
                    withAnimation(.snappy){
                        show = false
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                
                Spacer()
                
                if(!destination.isEmpty){
                    Button{
                        destination=""
                    } label: {
                        Text("Clear")
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()
            
            // location selection view
            LocationSelectionView(selOption: $selectedOption, destination: $destination)
            
            // date selection view
            DateSelectionView(selOption: $selectedOption, fromDate: $fromDate, toDate: $toDate)
            
            // selection guests view
            SelectionGuestsView(selOption: $selectedOption, numGuests: $numGuests)
        }
        
        Spacer()
    }
}

#Preview {
    DestinationSearchView(show: .constant(false))
}







