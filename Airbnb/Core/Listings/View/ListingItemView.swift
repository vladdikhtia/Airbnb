//
//  ListingView.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 12/04/2024.
//

import SwiftUI


// 16.56
struct ListingItemView: View {
    var images = ["villa1_1", "villa1_2", "villa1_3"]
    
    var body: some View {
        VStack(spacing: 8) {
            // images
            ListingImageCarrouselView()
                .frame(height: 320)
                .clipShape(.rect(cornerRadius: 10))
            
            // listing details
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    // Location
                    Text("Miami, Florida")
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
                        Text("$520")
                            .font(.headline)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                Label("4.86", systemImage: "star.fill")
                    .foregroundStyle(.black)

            }
        }
    }
}

#Preview {
    ListingItemView()
}
