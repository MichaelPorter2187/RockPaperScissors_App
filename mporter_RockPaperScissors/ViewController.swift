//
//  ViewController.swift
//  mporter_RockPaperScissors
//
//  Created by Michael Ray Porter, Jr on 3/28/24.
//

import UIKit
import AVFoundation
var char: String = "👤"
var wins = 0
var lose = 0
var Ties = 0
var yourRocks = 0
var yourPapers = 0
var yourScissors = 0
var bendRocks = 0
var bendPapers = 0
var bendScissors = 0

class ViewController: UIViewController {
    @IBOutlet weak var UserChoice: UILabel!
    @IBOutlet weak var BenderChoice: UILabel!
    @IBOutlet weak var Score: UILabel!
    @IBOutlet weak var WinLoseDraw: UILabel!
    @IBOutlet weak var Play: UIButton!
    @IBOutlet weak var MusicBtn: UIButton!
    @IBOutlet weak var SoundBtn: UIButton!
    @IBOutlet weak var Character: UIButton!
    
    var backgroundMusic: AVAudioPlayer!
    var soundEffect: AVAudioPlayer!
    
    //let weapons = ["Rock","Paper","Scissors"]
    var benderChoice: Int = -1
    var gameEnd = false
    var youWin: [String] = ["BenderLose1","BenderLose2","BenderLose3","BenderLose4","BenderLose5"]
    var youLose: [String] = ["BenderLaugh1","BenderLaugh2","BenderLaugh3","BenderLaugh4","BenderLaugh5"]
    var tie: [String] = ["BenderTie1","BenderTie2","BenderTie3","BenderTie4","BenderTie5"]
    var music = true
    var sound = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        UserChoice.text = ""
        BenderChoice.text = ""
        Score.text = "0 - 0"
        Play.alpha = 0
        if let backgroundMusicURL = Bundle.main.url(forResource: "BenderMusic", withExtension: "mp3"){
            backgroundMusic = try? AVAudioPlayer(contentsOf: backgroundMusicURL)
            backgroundMusic.numberOfLoops = -1
            backgroundMusic.volume = 1.75
            backgroundMusic.play()
        }
        if let soundEffectURL = Bundle.main.url(forResource: "BenderIntro", withExtension: "mp3"){
            soundEffect = try? AVAudioPlayer(contentsOf: soundEffectURL)
            soundEffect.volume = 3
            soundEffect.play()
        }
    }

    @IBAction func Rock(_ sender: Any) {
        Character.setTitle("\(char)", for: .normal)
        if gameEnd == false{
            UserChoice.text = "🪨"
            yourRocks += 1
            let random = Int.random(in: 0...2)
            
            switch random{
            case 0:
                BenderChoice.text = "🪨"
                bendRocks += 1
                Tie()
            case 1:
                BenderChoice.text = "📃"
                bendPapers += 1
                YouLose()
            case 2:
                BenderChoice.text = "✂️"
                bendScissors += 1
                YouWin()
            default:
                return
            }
        }
    }
    
    @IBAction func Paper(_ sender: Any) {
        Character.setTitle("\(char)", for: .normal)
        if gameEnd == false{
            UserChoice.text = "📃"
            yourPapers += 1
            let random = Int.random(in: 0...2)
            
            switch random{
            case 0:
                BenderChoice.text = "🪨"
                bendRocks += 1
                YouWin()
            case 1:
                BenderChoice.text = "📃"
                bendPapers += 1
                Tie()
            case 2:
                BenderChoice.text = "✂️"
                bendScissors += 1
                YouLose()
            default:
                return
            }
        }
    }
    
    @IBAction func Scissors(_ sender: Any) {
        Character.setTitle("\(char)", for: .normal)
        if gameEnd == false{
            UserChoice.text = "✂️"
            yourScissors += 1
            let random = Int.random(in: 0...2)
            
            switch random{
            case 0:
                BenderChoice.text = "🪨"
                bendRocks += 1
                YouLose()
            case 1:
                BenderChoice.text = "📃"
                bendPapers += 1
                YouWin()
            case 2:
                BenderChoice.text = "✂️"
                bendScissors += 1
                Tie()
            default:
                return
            }
        }
    }
    
    @IBAction func PlayAgain(_ sender: Any) {
        if gameEnd == true{
            Play.alpha = 0
            UserChoice.text = ""
            BenderChoice.text = ""
            WinLoseDraw.text = ""
            Character.setTitle("\(char)", for: .normal)
            gameEnd = false
        }
    }
 
    func YouWin(){
        wins += 1
        gameEnd = true
        WinLoseDraw.text = "YOU WIN"
        Score.text = "\(wins) - \(lose)"
        var string1: String
        let random = Int.random(in: 0...youWin.count-1)
        
        string1 = youWin[random]
        
        if let soundEffectURL = Bundle.main.url(forResource: string1, withExtension: "mp3"){
            soundEffect = try? AVAudioPlayer(contentsOf: soundEffectURL)
            if sound == true{
                soundEffect.volume = 2.5
                soundEffect.play()
            }
        }
        
        Play.alpha = 1
    }
    
    func YouLose(){
        lose += 1
        gameEnd = true
        WinLoseDraw.text = "YOU LOSE"
        Score.text = "\(wins) - \(lose)"
        var string1: String
        let random = Int.random(in: 0...youLose.count-1)
        
        string1 = youLose[random]
        
        if let soundEffectURL = Bundle.main.url(forResource: string1, withExtension: "mp3"){
            soundEffect = try? AVAudioPlayer(contentsOf: soundEffectURL)
            if sound == true{
                soundEffect.volume = 2.5
                soundEffect.play()
            }
        }
        
        Play.alpha = 1
    }
    
    func Tie(){
        gameEnd = true
        WinLoseDraw.text = "TIE"
        Ties += 1
        var string1: String
        let random = Int.random(in: 0...tie.count-1)
        
        string1 = tie[random]
        
        if let soundEffectURL = Bundle.main.url(forResource: string1, withExtension: "mp3"){
            soundEffect = try? AVAudioPlayer(contentsOf: soundEffectURL)
            if sound == true{
                soundEffect.volume = 2.5
                soundEffect.play()
            }
        }
        
        Play.alpha = 1
    }
    
    @IBAction func ToggleMusic(_ sender: Any) {
        Character.setTitle("\(char)", for: .normal)
        music = !music
        if music == true{
            MusicBtn.setTitle("🔈", for: .normal)
            backgroundMusic.volume = 2
        }else{
            MusicBtn.setTitle("🔇", for: .normal)
            backgroundMusic.volume = 0
        }
    }
    
    
    @IBAction func ToggleSound(_ sender: Any) {
        Character.setTitle("\(char)", for: .normal)
        sound = !sound
        if sound == true{
            SoundBtn.setTitle("🔔", for: .normal)
        }else{
            SoundBtn.setTitle("🔕", for: .normal)
        }
    }
    
    @IBAction func charSelect(_ sender: Any) {
        performSegue(withIdentifier: "CharacterSelect", sender: nil)
    }
    
    @IBAction func stats(_ sender: Any) {
        performSegue(withIdentifier: "Stats", sender: nil)
    }
    
}

