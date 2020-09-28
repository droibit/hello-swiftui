//
//  LandmarksCircleImage.swift
//  Hello-SwiftUI
//
//  Created by Shinya Kumagai on 2020/09/27.
//

import SwiftUI

struct LandmarkCircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4.0))
            .shadow(radius: 10.0)
    }
}

struct LandmarksCircleImage_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkCircleImage(image: Image("turtlerock"))
    }
}
