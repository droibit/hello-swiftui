//
//  UserData.swift
//  Hello-SwiftUI
//
//  Created by Shinya Kumagai on 2020/09/28.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
}
