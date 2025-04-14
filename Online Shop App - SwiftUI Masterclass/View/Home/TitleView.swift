//
//  TitleView.swift
//  Online Shop App - SwiftUI Masterclass
//
//  Created by Aran Fononi on 14/4/25.
//

import SwiftUI

struct TitleView: View {
    // MARK: - Properties
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        } //: HStack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

#Preview {
    TitleView(title: "Helmet")
}
