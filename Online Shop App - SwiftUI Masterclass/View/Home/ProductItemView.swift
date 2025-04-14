//
//  ProductItemView.swift
//  Online Shop App - SwiftUI Masterclass
//
//  Created by Aran Fononi on 14/4/25.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - Properties
    
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            // Photo
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //: ZStack
            .background(Color(red: product.color[0], green: product.color[1], blue: product.color[2]))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            
            // Name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // Price
            Text("$\(product.price)")
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
        } //: VStack
    }
}

#Preview {
    ProductItemView(product: products[0])
}
