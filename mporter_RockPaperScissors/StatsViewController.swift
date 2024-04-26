//
//  StatsViewController.swift
//  mporter_RockPaperScissors
//
//  Created by Michael Ray Porter, Jr on 4/5/24.
//

import UIKit

class StatsViewController: UIViewController {
    @IBOutlet weak var GamesWon: UILabel!
    @IBOutlet weak var GamesLost: UILabel!
    @IBOutlet weak var GamesTied: UILabel!
    
    @IBOutlet weak var youRock: UILabel!
    @IBOutlet weak var youPaper: UILabel!
    @IBOutlet weak var youScissors: UILabel!
    
    @IBOutlet weak var benderRock: UILabel!
    @IBOutlet weak var benderPaper: UILabel!
    @IBOutlet weak var benderScissors: UILabel!
    
    @IBOutlet weak var character: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        character.text = char
        
        GamesWon.text = "Games Won: \(wins)"
        GamesLost.text = "Games Lost: \(lose)"
        GamesTied.text = "Game Ties: \(Ties)"
        
        youRock.text = "Rocks: \(yourRocks)"
        youPaper.text = "Papers: \(yourPapers)"
        youScissors.text = "Scissors: \(yourScissors)"
        
        benderRock.text = "Rocks: \(bendRocks)"
        benderPaper.text = "Papers: \(bendPapers)"
        benderScissors.text = "Scissors: \(bendScissors)"
    }
    

    
}
