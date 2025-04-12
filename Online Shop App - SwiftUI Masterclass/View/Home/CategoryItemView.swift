//
//  CategoryItemView.swift
//  Online Shop App - SwiftUI Masterclass
//
//  Created by Aran Fononi on 12/4/25.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - Property
    let category: Category
    var body: some View {
        Button {
            
        } label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundStyle(.gray)
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                
                Spacer()
            } //: HStack
            .padding()
            .background(Color.white.clipShape(.rect(cornerRadius: 12)))
            .background(RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray, lineWidth: 1))
            
        } //: Button
    }
}

#Preview {
    CategoryItemView(category: categories[0])
}
