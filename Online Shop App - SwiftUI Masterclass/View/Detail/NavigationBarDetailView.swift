//
//  NavigationBarDetailView.swift
//  Online Shop App - SwiftUI Masterclass
//
//  Created by Aran Fononi on 15/4/25.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - Property
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundStyle(.white)
            } //: Button
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundStyle(.white)
            } //: Button
            
        } //: HStack
    }
}

#Preview {
    NavigationBarDetailView()
        .background(.gray)
        .padding()
}
