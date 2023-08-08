//
//  Struct.swift
//  Eval-iOS-Pokemon
//
//  Created by Student07 on 08/08/2023.
//

import Foundation
import UIKit

enum Auth {
    case Facebook, Google
}

struct Color {
    let color: UIColor
    let name: String
}

struct Pokemon {
    let name: String
    let types: [PokeType]
    let img: String
    let generation: Int
    let pokedexNumber: Int
    let height: Float
}

enum PokeType {
    case Grass, Poison, Fire, Fly, Water
}

var pokemonList = [
    Pokemon(
        name: NSLocalizedString("poke1", comment: ""),
        types: [.Grass, .Poison],
        img: "Bulbizarre",
        generation: 1,
        pokedexNumber: 1,
        height: 0.7
    ),
    Pokemon(
        name: NSLocalizedString("poke2", comment: ""),
        types: [.Grass, .Poison],
        img: "Herbizarre",
        generation: 1,
        pokedexNumber: 2,
        height: 1
    ),
    Pokemon(
        name: NSLocalizedString("poke3", comment: ""),
        types: [.Grass, .Poison],
        img: "Florizarre",
        generation: 1,
        pokedexNumber: 3,
        height: 2
    ),
    Pokemon(
        name: NSLocalizedString("poke4", comment: ""),
        types: [.Fire],
        img: "Salameche",
        generation: 1,
        pokedexNumber: 4,
        height: 0.6
    ),
    Pokemon(
        name: NSLocalizedString("poke5", comment: ""),
        types: [.Fire],
        img: "Reptincel",
        generation: 1,
        pokedexNumber: 5,
        height: 1.1
    ),
    Pokemon(
        name: NSLocalizedString("poke6", comment: ""),
        types: [.Fire, .Fly],
        img: "Dracaufeu",
        generation: 1,
        pokedexNumber: 6,
        height: 1.7
    )
]
