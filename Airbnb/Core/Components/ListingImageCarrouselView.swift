//
//  ListingImageCarrouselView.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 12/04/2024.
//

import SwiftUI

struct ListingImageCarrouselView: View {
    var images = ["villa1_1", "villa1_2", "villa1_3"]

    var body: some View {
        // images
        TabView{
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarrouselView()
}
