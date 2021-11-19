//
//  NewsItem.swift
//  PokemonCardsList
//
//

import Foundation


struct News: Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable {
    let title, articleDescription: String?
    let url: String?
    let urlToImage: String?
    let content: String?

    enum CodingKeys: String, CodingKey {
        case title
        case articleDescription = "description"
        case url, urlToImage, content
    }
}
