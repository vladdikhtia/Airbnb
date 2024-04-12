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
                LazyVStack(spacing: 32) {
                    ForEach(0..<10, id: \.self) { listing in
                        ListingItemView()
                            .frame(height: 400)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ExploreView()
}
