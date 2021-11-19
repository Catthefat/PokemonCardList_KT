//
//  PokDetailViewController.swift
//  PokemonCardsList
//
//  Created by kristians.tide on 19/11/2021.
//

import UIKit
import SDWebImage



class PokDetailViewController: UIViewController {
    
    var pokemon: Pokemon!

    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var PokNameLabel: UILabel!
    @IBOutlet weak var PokImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        PokNameLabel.text = pokemon.name
        PokImageView.sd_setImage(with: URL(string: pokemon.image), placeholderImage: UIImage(named: "pok.png"))
        Label1.text = "Card Value: " + pokemon.number
        label3.text = "Pokemons Subtype: " + pokemon.subtype!
        label2.text = "Pokemons HP: " + pokemon.hp!
        label4.text = "Pokemons Supertype: " + pokemon.supertype!
        label5.text = "Card ID: " + pokemon.id
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
