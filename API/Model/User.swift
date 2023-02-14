//
//  User.swift
//  API
//
//  Created by Soufiane AIT ELGHZI on 4/16/22.
//  Copyright © 2022 Soufiane AIT ELGHZI. All rights reserved.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? newJSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let embedded: Embedded
    let links: WelcomeLinks
    let page: Page

    enum CodingKeys: String, CodingKey {
        case embedded = "_embedded"
        case links = "_links"
        case page
    }
}

// MARK: - Embedded
struct Embedded: Codable {
    let users: [User]
}

// MARK: - User
struct User: Codable {
    let nom, prenom, mail, login: String
    let password: String
    let nbrQuizs: Int
    let links: UserLinks

    enum CodingKeys: String, CodingKey {
        case nom, prenom, mail, login, password, nbrQuizs
        case links = "_links"
    }
}

// MARK: - UserLinks
struct UserLinks: Codable {
    let linksSelf, user, score, quizs: Profile

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
        case user, score, quizs
    }
}

// MARK: - Profile
struct Profile: Codable {
    let href: String
}

// MARK: - WelcomeLinks
struct WelcomeLinks: Codable {
    let linksSelf, profile: Profile

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
        case profile
    }
}

// MARK: - Page
struct Page: Codable {
    let size, totalElements, totalPages, number: Int
}
