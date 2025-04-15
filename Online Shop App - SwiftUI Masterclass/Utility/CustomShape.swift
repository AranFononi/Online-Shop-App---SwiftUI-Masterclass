//
//  CustomShape.swift
//  Online Shop App - SwiftUI Masterclass
//
//  Created by Aran Fononi on 15/4/25.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight] ,cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}

#Preview {
    CustomShape()
        .padding()
}
