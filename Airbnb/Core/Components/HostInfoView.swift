//
//  HostInfoView.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 12/04/2024.
//

import SwiftUI

struct HostInfoView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 4) {
                Text("Entire villa hosted by \nTom Smith")
                    .font(.headline)
                
                    Text(" 4 guests - 4 bedrooms - 4 beds - 3 baths")
                    .font(.caption)
            }
            
            Spacer()
            
            Image("maleProfile")
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 64, height: 64)

        }
        .padding()
    }
}

#Preview {
    HostInfoView()
}
