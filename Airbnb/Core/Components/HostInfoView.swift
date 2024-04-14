//
//  HostInfoView.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 12/04/2024.
//

import SwiftUI

struct HostInfoView: View {
    var body: some View {
        VStack{
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
            
            
            Divider()
            
            // listing features
            VStack(alignment: .leading, spacing: 16) {
                ForEach(0..<2) { feature in
                    HStack(spacing: 12) {
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading) {
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Superhost are experience, highly rated hosts who are commited to providing great stars for guests")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
            }
            .padding()
        }
        
    }
}

#Preview {
    HostInfoView()
}
