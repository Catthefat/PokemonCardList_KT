//
//  Pokemon.swift
//  PokemonCardsList
//
//

import Foundation

struct Pokemon: Decodable {
    let id: String
    let name: String
    let image: String
    let number: String
    let supertype: String?
    let subtype: String?
    
    enum CodingKeys: String, CodingKey{
        case name, id
        case image = "imageUrl"
        case number, supertype, subtype
    }
}

struct Card: Decodable {
    let cards: [Pokemon]
}

