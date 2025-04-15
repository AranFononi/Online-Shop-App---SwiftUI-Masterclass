//
//  ContentView.swift
//  Online Shop App - SwiftUI Masterclass
//
//  Created by Aran Fononi on 10/4/25.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.connectedScenes.flatMap { ($0 as? UIWindowScene)?.windows ?? [] }.first { $0.isKeyWindow }?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5 )
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 0) {
                        
                        FeaturedTabView()
                            .frame(minHeight: 250)
                            .padding(.vertical, 20)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout,spacing: 15) {
                            ForEach(products) { product in
                            ProductItemView(product: product)
                            } //: Loop
                        } //: Grid
                        .padding(15)
                        
                        FooterView()
                            .padding(.horizontal)
                    } //: VStack
                } //: Scroll
            } //: VStack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } //: ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - PREVIEW
#Preview {
    ContentView()
}
