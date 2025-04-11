//
//  FeaturedItemView.swift
//  Online Shop App - SwiftUI Masterclass
//
//  Created by Aran Fononi on 11/4/25.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - Properties
    
    let player: Player
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .clipShape(.rect(cornerRadius: 12))
    }
}

#Preview {
    FeaturedItemView(player: players[0])
}
