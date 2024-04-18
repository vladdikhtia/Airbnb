//
//  ListingDetailView.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 12/04/2024.
//

import SwiftUI

struct ListingDetailView: View {

    @Environment(\.dismiss) var dismiss
    let listing: Listing

    var body: some View {
        ScrollView{
            // images
            ZStack(alignment: .topLeading) {
                ListingImageCarrouselView(listing: listing)
                    .frame(height: 320)
                
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 50, height: 50)
                        }
                        .padding(.horizontal, 30)
                        .padding(.vertical, 60)
                })
                
            }
                
            VStack(alignment: .leading, spacing: 8) {
                Text("\(listing.title)")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack{
                        RatingLabel()
                        
                        Text(" - ")
                        Text("25 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    
                    Text("\(listing.city), \(listing.state)")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            // host info
            HostInfoView(listing: listing)
            
            Divider()
            
            ApartmentInfoView(listing: listing)
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment: .bottom) {
            ReserveButton()
        }
    }
}

#Preview {
    ListingDetailView(listing: DeveloperPreview().listings[0])
}
