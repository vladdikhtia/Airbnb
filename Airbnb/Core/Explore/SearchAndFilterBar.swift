//
//  SearchAndFilterBar.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 12/04/2024.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading, spacing: 2){
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("Anywhere - Any Week - Add guests")
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
    SearchAndFilterBar()
}
