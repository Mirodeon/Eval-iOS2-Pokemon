//
//  PokemonCell.swift
//  Eval-iOS-Pokemon
//
//  Created by Student07 on 08/08/2023.
//

import UIKit

class PokemonCell: UITableViewCell {

    @IBOutlet weak var imgPokemon: UIImageView!
    @IBOutlet weak var namePokemon: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(pokemon: Pokemon){
        imgPokemon.image = UIImage(named: pokemon.img)
        namePokemon.text = pokemon.name
    }
    
}
