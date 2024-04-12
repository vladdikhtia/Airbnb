//
//  RatingLabel.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 12/04/2024.
//

import SwiftUI

struct RatingLabel: View {
    var body: some View {
        Label("4.86", systemImage: "star.fill")
            .foregroundStyle(.black)
    }
}

#Preview {
    RatingLabel()
}
