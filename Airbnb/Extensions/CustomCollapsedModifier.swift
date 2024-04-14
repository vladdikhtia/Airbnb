//
//  afas.swift
//  Airbnb
//
//  Created by Vladyslav Dikhtiaruk on 14/04/2024.
//

import Foundation
import SwiftUI


struct CustomCollapsedModifier: ViewModifier {
    var height: CGFloat
    var action: () -> Void
    
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(height: height)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.spring){
                    action()
                }
            }
    }
}
extension View {
    func customCollapsedModifier(height: CGFloat, action: @escaping () -> Void) -> some View {
        modifier(CustomCollapsedModifier(height: height, action: action))
    }
}
