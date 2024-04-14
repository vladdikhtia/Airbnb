//
//  ListingDetailView.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 12/04/2024.
//

import SwiftUI

struct ListingDetailView: View {
    var images = ["villa1_1", "villa1_2", "villa1_3"]
    
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ScrollView{
            // images
            ZStack(alignment: .topLeading) {
                ListingImageCarrouselView()
                    .frame(height: 320)
                
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)
                })
                
            }
                
            VStack(alignment: .leading, spacing: 8) {
                Text("Miami Villa")
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
                    
                    Text("Miami, Florida")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            // host info
            HostInfoView()
            
            Divider()
            
            ApartmentInfoView()
        }
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment: .bottom) {
            ReserveButton()
        }
    }
}

#Preview {
    ListingDetailView()
}
