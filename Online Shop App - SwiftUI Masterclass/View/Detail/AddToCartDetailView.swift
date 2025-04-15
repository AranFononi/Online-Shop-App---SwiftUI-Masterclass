//
//  AddToCartDetailView.swift
//  Online Shop App - SwiftUI Masterclass
//
//  Created by Aran Fononi on 15/4/25.
//

import SwiftUI

struct AddToCartDetailView: View {
    var body: some View {
        Button {
            
        } label: {
            Spacer()
            
            Text("Add to Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            
            Spacer()
        } //: Button
        .padding(15)
        .background(
            Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
        )
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCartDetailView()
        .padding()
}
