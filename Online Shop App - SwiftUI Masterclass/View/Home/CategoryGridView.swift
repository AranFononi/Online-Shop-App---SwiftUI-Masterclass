//
//  CategoryGridView.swift
//  Online Shop App - SwiftUI Masterclass
//
//  Created by Aran Fononi on 13/4/25.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                Section(header: SectionView(rotateClockwise: false), footer: SectionView(rotateClockwise: true)) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                } //:  Loop
            } //: HGrid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        } //: Scroll
    }
}

#Preview {
    CategoryGridView()
}
