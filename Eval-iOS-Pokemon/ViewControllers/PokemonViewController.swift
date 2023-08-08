//
//  PokemonViewController.swift
//  Eval-iOS-Pokemon
//
//  Created by Student07 on 08/08/2023.
//

import UIKit

class PokemonViewController: UIViewController {

    @IBOutlet weak var tablePokemon: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tablePokemon.dataSource = self
        tablePokemon.delegate = self
        
        tablePokemon.register(
            UINib(nibName: "PokemonCell", bundle: nil),
            forCellReuseIdentifier: "PokemonCell"
        )
    }
}

extension PokemonViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemonList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier:"PokemonCell",
            for: indexPath
        ) as? PokemonCell else {
            return UITableViewCell()
        }
        
        cell.setup(pokemon: pokemonList[indexPath.row])
      
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.size.height/5
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "Detail") as! DetailViewController
        vc.pokemon = pokemonList[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}
