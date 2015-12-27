//
//  ViewController.swift
//  Tipster
//
//  Created by Kush Rustagi on 12/26/15.
//  Copyright © 2015 Kush Rustagi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipValueLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipValueLabel.text = "$0.00"
        totalAmountLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

