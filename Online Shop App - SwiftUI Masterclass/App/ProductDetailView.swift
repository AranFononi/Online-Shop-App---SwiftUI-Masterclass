//
//  ProductDetailView.swift
//  Online Shop App - SwiftUI Masterclass
//
//  Created by Aran Fononi on 15/4/25.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5) {
            
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.connectedScenes.flatMap { ($0 as? UIWindowScene)?.windows ?? [] }.first { $0.isKeyWindow }?.safeAreaInsets.top)
            
            // HEADER
            Text(sampleProduct.name)
            
            // DETAIL TOP PART
            
            // DETAIL BOTTOM PART
            
            // RATINGS AND SIZES
            
            // DESCRIPTION
            
            // QUANTITY AND FAVORITES
            
            // ADD TO CART
            Spacer()
        } //: VStack
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
        ).ignoresSafeArea(.all, edges: .all)
        
    }
}

#Preview {
    ProductDetailView()
}
