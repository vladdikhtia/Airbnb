//
//  ListingView.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 12/04/2024.
//

import SwiftUI


// 16.56
struct ListingItemView: View {
    var body: some View {
        VStack(spacing: 8) {
            // images
            TabView{
                ForEach(0...3, id: \.self) { image in
                    Rectangle()
                }
            }
            .frame(height: 300)
            .clipShape(.rect(cornerRadius: 10))
            .tabViewStyle(.page)
            
            // listing details
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    // Location
                    Text("Miami, Florida")
                        .font(.headline)
                    
                    // Distance
                    Text("12 mi away")
                        .foregroundStyle(.secondary)
                    
                    // Dates
                    Text("Nov 3 - 10")
                        .foregroundStyle(.secondary)
                    
                    // Price
                    HStack(spacing: 4) {
                        Text("$520")
                            .font(.headline)
                        Text("night")
                    }
                }
                
                Spacer()
                
                Label("4.86", systemImage: "star.fill")
                
            }
        }
    }
}

#Preview {
    ListingItemView()
}
