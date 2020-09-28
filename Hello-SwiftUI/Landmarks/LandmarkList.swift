//
//  LandmarkList.swift
//  Hello-SwiftUI
//
//  Created by Shinya Kumagai on 2020/09/28.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
        
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoriteOnly) {
                    Text("Favorites only")
                }
                ForEach(userData.landmarks) { landmark in
                    if !userData.showFavoriteOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
//        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
        ForEach(["iPhone SE"], id: \.self) { deviceName in
            LandmarkList()
                .environmentObject(UserData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
