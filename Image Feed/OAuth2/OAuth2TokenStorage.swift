//
//  OAuth2TokenStorage.swift
//  Image Feed
//
//  Created by Влад on 29.03.2023.
//
import Foundation
import SwiftKeychainWrapper

final class OAuth2TokenStorage {
    
    let accessToken = "token"
    var token: String? {
        get {
            KeychainWrapper.standard.string(forKey: accessToken)
        }
        set {
            guard let newValue else { return }
            KeychainWrapper.standard.set(newValue, forKey: accessToken)
        }
    }
}

