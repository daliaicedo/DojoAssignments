//
//  ViewController.swift
//  blist
//
//  Created by dalia icedo on 3/15/17.
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

    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!

    @IBAction func buttonPressed(_ sender: UIButton) {
    }

}

