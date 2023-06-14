//
//  UserSettings.swift
//  ModelDataSwiftUI
//
//  Created by Ilnur on 14.06.2023.
//

import Foundation

final class UserSettings: ObservableObject {
    @Published var isLoggedIn = false
    var name = ""
}
