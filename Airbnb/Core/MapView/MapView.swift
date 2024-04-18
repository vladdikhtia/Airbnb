//
//  MapView.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 14/04/2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    let listing: Listing
    
    var location: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: listing.latitude, longitude: listing.longtitude)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Where you'll be")
                .font(.headline)
           
            Map(initialPosition: 
                    .camera(.init(
                        centerCoordinate: location,
                        distance: 20_000
                        )
                    )
            ) {
                Marker("\(listing.title)", coordinate: location)
                    .tint(.blue)
            }
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 12))
        }
    }
}

#Preview {
    MapView(listing: DeveloperPreview().listings[0])
}
