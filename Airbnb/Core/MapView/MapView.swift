//
//  MapView.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 14/04/2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Where you'll be")
                .font(.headline)
            
            Map()
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
        }
    }
}

#Preview {
    MapView()
}
