//
//  ExploreView.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 12/04/2024.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                SearchAndFilterBar()
                
                LazyVStack(spacing: 32) {
                    ForEach(0..<10, id: \.self) { listing in
                        NavigationLink(value: listing) {
                            ListingItemView()
                                .frame(height: 400)
                                
                        }
                        
//                        NavigationLink {
//                            EmptyView()
//                        } label: {
//                            ListingItemView()
//                        }
//                            .frame(height: 400)
//                            .foregroundStyle(.black)
                    }
                }
                .padding()
            }
            
            .navigationDestination(for: Int.self) { listing in
                Text("Listing num: \(listing)")
            }
        }
    }
}

#Preview {
    ExploreView()
}
