//
//  ProfileView.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 15/04/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // profile login view
            VStack(alignment: .leading, spacing: 32){
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Log in to start planning your next trip")
                }
                
               LogInButton()
                
                HStack{
                    Text("Don't have an account?")
                    
                    Text("Sign up")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }
            
            // profile options
            VStack(alignment: .leading, spacing: 24){
                ProfileOptionView(imageName: "gear", title: "Settings")
                ProfileOptionView(imageName: "gear", title: "Accessibility")
                ProfileOptionView(imageName: "questionmark.circle", title: "Visit the Help Center")
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    ProfileView()
}
