//
//  ViewController.swift
//  tipster
//
//  Created by dalia icedo on 3/8/17.
//  Copyright © 2017 dalia icedo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var billAmount: UILabel!
    @IBOutlet weak var tax1: UILabel!
    @IBOutlet weak var tax1Amount: UILabel!
    @IBOutlet weak var total1: UILabel!
    @IBOutlet weak var tax2: UILabel!
    @IBOutlet weak var tax2Amount: UILabel!
    @IBOutlet weak var total2: UILabel!
    @IBOutlet weak var tax3: UILabel!
    @IBOutlet weak var tax3Amount: UILabel!
    @IBOutlet weak var total3: UILabel!
    
    @IBAction func numberPressed(_ sender: UIButton) {
        if billAmount.text == "0" {
            billAmount.text = String(sender.tag)
        }
        else if billAmount.text != "0" && sender.tag < 10{
            var billTotal = billAmount.text
            billAmount.text = billTotal! + String(sender.tag)
        }
        if billAmount.text == "0" && sender.tag == 11 {
            billAmount.text = "0."
        }
        else if sender.tag == 11 {
            var billTotal = billAmount.text
            billAmount.text = billTotal! + "."
        }
        else if sender.tag == 12 {
            billAmount.text = "0"
        }
        
        
    }
    
}
