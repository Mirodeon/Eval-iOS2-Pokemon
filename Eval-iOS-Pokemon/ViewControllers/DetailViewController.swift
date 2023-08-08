//
//  DetailViewController.swift
//  Eval-iOS-Pokemon
//
//  Created by Student07 on 08/08/2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imgPokemon: UIImageView!
    @IBOutlet weak var namePokemon: UILabel!
    @IBOutlet weak var numDex: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var genLabel: UILabel!
    
    var pokemon: Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    func setup() {
        view.backgroundColor = .darkGray
        if let pokemon = self.pokemon{
            imgPokemon.image = UIImage(named: pokemon.img)
            namePokemon.text = pokemon.name
            namePokemon.textColor = .customYellow()
            numDex.text = "#\(pokemon.pokedexNumber)"
            numDex.textColor = .customYellow()
            heightLabel.text = "Height: \(pokemon.height)m"
            heightLabel.textColor = .customYellow()
            genLabel.text = "Gen: \(pokemon.generation)"
            genLabel.textColor = .customYellow()
            typeLabel.textColor = .customYellow()
            typeLabel.text = "Types: " + {
                var text: [String] = []
                pokemon.types.forEach{
                    switch($0){
                    case .Fire: text.append("Fire")
                    case .Fly: text.append("Fly")
                    case .Grass: text.append("Grass")
                    case .Poison: text.append("Poison")
                    case .Water: text.append("Water")
                    }
                }
                return text.joined(separator: "/")
            }()
        }
    }

}
