//
//  ViewController.swift
//  tictacTOE
//
//  Created by dalia icedo on 3/8/17.
//  Copyright © 2017 dalia icedo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var isItXturn = true
    
    var X = UIColor.magenta
    var O = UIColor.purple

    
    @IBOutlet weak var Btn1: UIButton!
    
    @IBOutlet weak var Btn2: UIButton!
    
    @IBOutlet weak var Btn3: UIButton!
    
    @IBOutlet weak var Btn4: UIButton!
    
    @IBOutlet weak var Btn5: UIButton!
    
    @IBOutlet weak var Btn6: UIButton!
    
    @IBOutlet weak var Btn7: UIButton!
    
    @IBOutlet weak var Btn8: UIButton!
    
    @IBOutlet weak var Btn9: UIButton!
    
    @IBOutlet weak var winnerLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.backgroundColor != X && sender.backgroundColor != O {
            sender.backgroundColor = (isItXturn) ? X : O
            isItXturn = !isItXturn
        
            checkforWin(sender)
            print (sender.tag)
        }
    }
    func checkforWin(_ sender: UIButton){
        if
        sender.backgroundColor == Btn1.backgroundColor && Btn1.backgroundColor == Btn2.backgroundColor &&
            Btn2.backgroundColor ==  Btn3.backgroundColor ||
        sender.backgroundColor == Btn4.backgroundColor &&  Btn4.backgroundColor == Btn5.backgroundColor &&
            Btn5.backgroundColor == Btn6.backgroundColor ||
        sender.backgroundColor == Btn7.backgroundColor && Btn7.backgroundColor == Btn8.backgroundColor &&
            Btn8.backgroundColor == Btn9.backgroundColor ||
        sender.backgroundColor == Btn1.backgroundColor && Btn1.backgroundColor == Btn4.backgroundColor &&
            Btn4.backgroundColor == Btn7.backgroundColor ||
        sender.backgroundColor == Btn2.backgroundColor && Btn2.backgroundColor == Btn5.backgroundColor &&
            Btn5.backgroundColor == Btn8.backgroundColor ||
        sender.backgroundColor == Btn3.backgroundColor && Btn3.backgroundColor == Btn6.backgroundColor &&
            Btn6.backgroundColor == Btn9.backgroundColor ||
        sender.backgroundColor == Btn1.backgroundColor && Btn1.backgroundColor == Btn5.backgroundColor &&
            Btn5.backgroundColor == Btn9.backgroundColor ||
        sender.backgroundColor == Btn3.backgroundColor && Btn3.backgroundColor == Btn5.backgroundColor &&
            Btn5.backgroundColor == Btn7.backgroundColor {
            if sender.backgroundColor == X {
                print ("X won!")
                winnerLbl.text = "X won!"
            }
            else if sender.backgroundColor == O {
                print ("O won!")
                winnerLbl.text = "O won!"
            }
        }
    }
    
    @IBAction func resetGame(_ sender: UIButton) {
        Btn1.backgroundColor = UIColor(red:1, green:1, blue:102/255, alpha:0.27)
        Btn2.backgroundColor = UIColor(red:1, green:1, blue:102/255, alpha:0.27)
        Btn3.backgroundColor = UIColor(red:1, green:1, blue:102/255, alpha:0.27)
        Btn4.backgroundColor = UIColor(red:1, green:1, blue:102/255, alpha:0.27)
        Btn5.backgroundColor = UIColor(red:1, green:1, blue:102/255, alpha:0.27)
        Btn6.backgroundColor = UIColor(red:1, green:1, blue:102/255, alpha:0.27)
        Btn7.backgroundColor = UIColor(red:1, green:1, blue:102/255, alpha:0.27)
        Btn8.backgroundColor = UIColor(red:1, green:1, blue:102/255, alpha:0.27)
        Btn9.backgroundColor = UIColor(red:1, green:1, blue:102/255, alpha:0.27)
        winnerLbl.text = "who will win this round?"
    }
    
}

