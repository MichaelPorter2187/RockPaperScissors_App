//
//  CharacterSelectViewController.swift
//  mporter_RockPaperScissors
//
//  Created by Michael Ray Porter, Jr on 4/4/24.
//

import UIKit

class CharacterSelectViewController: UIViewController {
    @IBOutlet weak var character: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        character.text = char
    }
    
    @IBAction func Option1(_ sender: Any) {
        character.text = "🙍🏻‍♂️"
        char = "🙍🏻‍♂️"
    }
    
    @IBAction func Option2(_ sender: Any) {
        character.text = "🙍🏼‍♂️"
        char = "🙍🏼‍♂️"
    }
    
    @IBAction func Option3(_ sender: Any) {
        character.text = "🙍🏽‍♂️"
        char = "🙍🏽‍♂️"
    }
    
    @IBAction func Option4(_ sender: Any) {
        character.text = "🙍🏾‍♂️"
        char = "🙍🏾‍♂️"
    }
    
    @IBAction func Option5(_ sender: Any) {
        character.text = "🙍🏻‍♀️"
        char = "🙍🏻‍♀️"
    }
    
    @IBAction func Option6(_ sender: Any) {
        character.text = "🙍🏼‍♀️"
        char = "🙍🏼‍♀️"
    }
    
    @IBAction func Option7(_ sender: Any) {
        character.text = "🙍🏽‍♀️"
        char = "🙍🏽‍♀️"
    }
    
    @IBAction func Option8(_ sender: Any) {
        character.text = "🙍🏾‍♀️"
        char = "🙍🏾‍♀️"
    }
    
    @IBAction func Option9(_ sender: Any) {
        character.text = "👤"
        char = "👤"
    }
    
    @IBAction func Option10(_ sender: Any) {
        character.text = "🤖"
        char = "🤖"
    }
    
    @IBAction func Option11(_ sender: Any) {
        character.text = "👽"
        char = "👽"
    }
    
    @IBAction func Option12(_ sender: Any) {
        character.text = "🤡"
        char = "🤡"
    }
    
    
}
