//
//  PokemonDetailVC.swift
//  Pokedex3
//
//  Created by Jackie H. Jensen on 19/02/2017.
//  Copyright © 2017 JHJService. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    var pokemon: Pokemon!

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var DefenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokedexIdLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var evoLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLbl.text = pokemon.name
        
        let img = UIImage(named: "\(pokemon.pokedexId)")
        
        mainImg.image = img
        currentEvoImg.image = img
        pokedexIdLbl.text = "\(pokemon.pokedexId)"
        
        pokemon.downlaodPokemonDetail {
            // only call after newtwork call complete
            print("Det funger")
            self.updateUI()
            
            
        }
        
        
    }
    
    func updateUI() {
        
        attackLbl.text = pokemon.attack
        DefenseLbl.text = pokemon.defense
        heightLbl.text = pokemon.defense
        weightLbl.text = pokemon.weight
        // pokedexIdLbl.text = pokemon.pokedexId
        // typeLbl.text = pokemon.type
        
        
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    

}
