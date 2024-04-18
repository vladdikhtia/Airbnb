//
//  ApartmentInfoView.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 14/04/2024.
//
import MapKit
import SwiftUI

struct ApartmentInfoView: View {
    let listing: Listing
    var body: some View {
        VStack{
            // apartment info
            VStack(alignment: .leading) {
                Text("Where you'll sleep")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16){
                        ForEach(1...listing.numberOfBedrooms, id: \.self) { room in
                            VStack(alignment: .leading) {
                                Image(systemName: "bed.double")
                                
                                Text("Bedroom \(room)")
                            }
                            .frame(width: 132, height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()
            
            // listing amentities
            VStack(alignment: .leading, spacing: 12){
                Text("What this place offers")
                    .font(.headline)
                    
                
                ForEach(listing.amentities) { amentity in
                    HStack(spacing: 8) {
                        Image(systemName: "\(amentity.imageName)")
                            .frame(width: 32)
                        
                        Text("\(amentity.title)")
                            .font(.footnote)
                        
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            MapView(listing: listing)
            .padding()
        }
        
    }
}

#Preview {
    ApartmentInfoView(listing: DeveloperPreview().listings[0])
}
