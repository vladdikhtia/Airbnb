//
//  HostInfoView.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 12/04/2024.
//

import SwiftUI

struct HostInfoView: View {
    let listing: Listing
    
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading, spacing: 4) {
                    Text("Entire \(listing.listingType.description) hosted by \n\(listing.ownerName)")
                        .font(.headline)
                    
                    Text(" \(listing.numberOfGuests) guests - \(listing.numberOfBedrooms) bedrooms - \(listing.numberOfBeds) beds - \(listing.numberOfBathrooms) baths")
                        .font(.caption)
                }
                
                Spacer()
                
                Image("\(listing.ownerImageUrl)")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 64, height: 64)
                
            }
            .padding()
            
            
            Divider()
            
            // listing features
            VStack(alignment: .leading, spacing: 16) {
                ForEach(listing.features) { feature in
                    HStack(spacing: 12) {
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading) {
                            Text("\(feature.title)")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("\(feature.subTitle)")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
            }
            .padding()
        }
        
    }
}

#Preview {
    HostInfoView(listing: DeveloperPreview().listings[0])
}
