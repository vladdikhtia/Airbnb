//
//  ReserveButton.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 14/04/2024.
//

import SwiftUI

struct ReserveButton: View {
    var body: some View {
        VStack{
            Divider()
                .padding(.bottom)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("$500")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text("Total before taxes")
                    
                    Text("Oct 15 - 20")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.footnote)

                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("Reserve")
                        .font(.subheadline)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .frame(width: 140, height: 40)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                })
                
            }
            .padding(.horizontal, 32)
            
        }
        .background(.white)
    }
}

#Preview {
    ReserveButton()
}
