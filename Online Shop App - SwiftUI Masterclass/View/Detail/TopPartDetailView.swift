//
//  TopPartDetailView.swift
//  Online Shop App - SwiftUI Masterclass
//
//  Created by Aran Fononi on 15/4/25.
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - Property
    @State private var isAnimating: Bool = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            // PRICE
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(isAnimating ? 1.35 : 0.5 , anchor: .leading)
            } //: VStack
            .offset(y: isAnimating ? -75 : -50)
            
            Spacer()
            
            // PHOTO
            Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
                .scaleEffect(isAnimating ? 1 : 0.5)
                .offset(y: isAnimating ? 0 : -50 )
            
        } //: HStack
        .onAppear {
            withAnimation(.spring(duration: 0.75)) {
                isAnimating.toggle()
            }
        }
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
