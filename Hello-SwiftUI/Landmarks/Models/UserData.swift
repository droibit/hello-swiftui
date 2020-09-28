//
//  UserData.swift
//  Hello-SwiftUI
//
//  Created by Shinya Kumagai on 2020/09/28.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoriteOnly = false
    @Published var landmarks = landmarkData
}
