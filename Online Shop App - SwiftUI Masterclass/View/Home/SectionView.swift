//
//  SectionView.swift
//  Online Shop App - SwiftUI Masterclass
//
//  Created by Aran Fononi on 13/4/25.
//

import SwiftUI

struct SectionView: View {
    // MARK: - Properties
    
    @State var rotateClockwise: Bool
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            Spacer()
        } //: VStack
        .background(colorGray.clipShape(.rect(cornerRadius: 12)))
        .frame(width: 85)
    }
}

#Preview {
    SectionView(rotateClockwise: false)
}
