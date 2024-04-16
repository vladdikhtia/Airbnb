//
//  WishlistsView.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 16/04/2024.
//

import SwiftUI

struct WishlistsView: View {
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 4){
                    Text("Log in to view your wishlists")
                        .font(.headline)
                    
                    Text("You can create, view or edit wishlists once you've logged in")
                        .font(.footnote)
                }
                
                LogInButton()
                
                Spacer()
            }
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishlistsView()
}
