//
//  AppState.swift
//  login-page
//
//  Created by Baris Dilekci on 13.01.2024.
//

import SwiftUI

enum AppStorageKey: String {
    case isOnboardingDone
}

final class AppState: ObservableObject {
    @AppStorage(AppStorageKey.isOnboardingDone.rawValue) var isOnboardingDone: Bool = false
}
