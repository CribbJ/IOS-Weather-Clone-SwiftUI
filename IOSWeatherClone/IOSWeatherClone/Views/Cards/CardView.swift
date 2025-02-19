//
//  CardView.swift
//  IOSWeatherClone
//
//  Created by James Cribb on 18/02/2025.
//

import SwiftUI

struct CardView<Content: View>: View {
    let content: Content
    var backgroundColor: Color = Color.black.opacity(0.4)
    var cornerRadius: CGFloat = 20
    var padding: EdgeInsets = EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
    
    init(
        backgroundColor: Color = Color.black.opacity(0.4),
        cornerRadius: CGFloat = 20,
        padding: EdgeInsets = EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10),
        @ViewBuilder content: () -> Content) {
            self.content = content()
            self.backgroundColor = backgroundColor
            self.cornerRadius = cornerRadius
            self.padding = padding
        }
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius)
                .fill(backgroundColor)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(padding)
            
            content // Content to display inside the card
        }
    }
}
