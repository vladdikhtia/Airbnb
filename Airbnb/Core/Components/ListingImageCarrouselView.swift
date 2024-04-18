//
//  ListingImageCarrouselView.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 12/04/2024.
//

import SwiftUI

struct ListingImageCarrouselView: View {
    let listing: Listing

    var body: some View {
        // images
        TabView{
            ForEach(listing.imageURLs, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarrouselView(listing: DeveloperPreview().listings[1])
}
