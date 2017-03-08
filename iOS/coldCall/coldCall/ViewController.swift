//
//  ViewController.swift
//  coldCall
//
//  Created by dalia icedo on 3/7/17.
//  Copyright © 2017 dalia icedo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var numLbl: UILabel!
    
    let nameList = ["Moose", "Macchiato", "Mocha", "Shadow"]
    let numbers = ["1", "2", "3", "4", "5"]
    
    @IBAction func coldCallBtn(_ sender: UIButton) {
        let num = Int(arc4random_uniform(UInt32(nameList.count)))
        nameLbl.text = nameList[num]
        
        let num2 = Int(arc4random_uniform(UInt32(numbers.count)))
        numLbl.text = numbers[num2]
        if num2 < 2 {
            numLbl.textColor = UIColor.red
        } else if num2 == 4 {
            numLbl.textColor = UIColor.green
        } else {
            numLbl.textColor = UIColor.orange
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

