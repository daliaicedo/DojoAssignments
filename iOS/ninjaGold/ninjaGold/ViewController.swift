//
//  ViewController.swift
//  ninjaGold
//
//  Created by dalia icedo on 3/8/17.
//  Copyright © 2017 dalia icedo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var scoreLbl: UILabel!
    @IBOutlet weak var FarmScoreLbl: UILabel!
    @IBOutlet weak var caveScoreLbl: UILabel!
    @IBOutlet weak var houseScoreLbl: UILabel!
    @IBOutlet weak var casinoScoreLbl: UILabel!
    
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLbl.text = String(score)
    }
    
    func updateGold(amount: Int){
        score += amount
    }
    
    func resetGame(){
        FarmScoreLbl.isHidden = true
        caveScoreLbl.isHidden = true
        houseScoreLbl.isHidden = true
        casinoScoreLbl.isHidden = true
        score = 0
        scoreLbl.text = String(score)
    }
    
    @IBAction func buildingButtonPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            FarmScoreLbl.isHidden = false
            let gold = Int(arc4random_uniform(11) + 10)
            updateGold(amount: gold)
            FarmScoreLbl.text = "You won \(gold) from farm!"
        }
        if sender.tag == 2 {
            caveScoreLbl.isHidden = false
            let gold = Int(arc4random_uniform(5) + 5)
            updateGold(amount: gold)
            caveScoreLbl.text = "You won \(gold) from cave!"
        }
        if sender.tag == 3 {
            houseScoreLbl.isHidden = false
            let gold = Int(arc4random_uniform(2) + 3)
            updateGold(amount: gold)
            houseScoreLbl.text = "You won \(gold) from house!"
        }
        if sender.tag == 4 {
            casinoScoreLbl.isHidden = false
            let gold = Int(arc4random_uniform(50))
            let gamble = Int(arc4random_uniform(2))
            if gamble == 1{
                casinoScoreLbl.text = "You lost \(gold) from casino!"
                score -= gold
            } else {
                updateGold(amount: gold)
                casinoScoreLbl.text = "You won \(gold) from casino!"
            }
        }
        else {
            if sender.tag == 5 {
                resetGame()
            }
        scoreLbl.text = String(score)
    }
    }

}
