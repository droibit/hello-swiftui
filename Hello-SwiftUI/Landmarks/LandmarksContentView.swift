//
//  LandmarksContentView.swift
//  Hello-SwiftUI
//
//  Created by Shinya Kumagai on 2020/09/27.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            LandmarksMapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            LandmarksCircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua tree Natinal Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }.padding()
            
            Spacer()
        }
    }
}


struct LandmarksContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
