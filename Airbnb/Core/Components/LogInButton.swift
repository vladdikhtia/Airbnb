//
//  LogInButton.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 16/04/2024.
//

import SwiftUI

struct LogInButton: View {
    var body: some View {
        Button(action: {
            print("Log in...")
        }, label: {
            Text("Log in")
                .foregroundStyle(.white)
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 360, height: 48)
                .background(.pink)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        })
    }
}

#Preview {
    LogInButton()
}
