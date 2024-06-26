//
//  SearchAndFilterBar.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 12/04/2024.
//

import SwiftUI

struct SearchAndFilterBar: View {
    @Binding var showDestinationSearchView: Bool
    @Binding var location: String
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading, spacing: 2){
                Text(location.isEmpty ? "Where to?" : "\(location)")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text(location.isEmpty ? "Anywhere - Any Week - Add guests" : "Any Week - Add guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Button(action: {
                    
            }, label: {
                    Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
            .foregroundStyle(.black)
        }
        .onTapGesture {
            withAnimation(.snappy){
                showDestinationSearchView.toggle()
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay{
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(.gray.opacity(0.3))
                .shadow(color: .black.opacity(0.4), radius: 3)
        }
        .padding()
    }
}

#Preview {
    SearchAndFilterBar(showDestinationSearchView: .constant(false), location: .constant("Kyiv"))
}
