//
//  ListingView.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 12/04/2024.
//

import SwiftUI


struct ListingItemView: View {
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 8) {
            // images
            ListingImageCarrouselView(listing: listing)
                .frame(height: 320)
                .clipShape(.rect(cornerRadius: 10))
            
            // listing details
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    // Location
                    Text("\(listing.city), \(listing.state)")
                        .font(.headline)
                        .foregroundStyle(.black)
                    
                    // Distance
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    // Dates
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    
                    // Price
                    HStack(spacing: 4) {
                        Text("$\(listing.pricePerNight)")
                            .font(.headline)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                Label("\(listing.rating.formatted())", systemImage: "star.fill")
                    .foregroundStyle(.black)

            }
        }
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview().listings[0])
}
