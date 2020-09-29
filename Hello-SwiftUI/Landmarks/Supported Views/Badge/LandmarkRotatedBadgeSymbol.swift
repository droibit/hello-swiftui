//
//  LandmarkRotatedBadgeSymbol.swift
//  Hello-SwiftUI
//
//  Created by Shinya Kumagai on 2020/09/29.
//

import SwiftUI

struct LandmarkRotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        LandmarkBadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct LandmarkRotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
