//
//  OAuth2TokenStorage.swift
//  Image Feed
//
//  Created by Влад on 29.03.2023.
//

import Foundation

final class OAuth2TokenStorage {
    private var authToken: String = ""
    var token: String? {
        get {
            return UserDefaults.standard.string(forKey: authToken)
        }
        set {
            UserDefaults.standard.set(newValue, forKey: authToken)
        }
    }
}

