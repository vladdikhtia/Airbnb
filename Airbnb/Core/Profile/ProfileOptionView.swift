//
//  ProfileOptionView.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 15/04/2024.
//

import SwiftUI

struct ProfileOptionView: View {
    var imageName: String
    var title: String
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                
                Text(title)
                
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            .padding(.horizontal)
            
            Divider()
        }
    }
}

#Preview {
    ProfileOptionView(imageName: "house", title: "house")
}
