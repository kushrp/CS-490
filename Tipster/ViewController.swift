//
//  ViewController.swift
//  Tipster
//
//  Created by Kush Rustagi on 12/26/15.
//  Copyright © 2015 Kush Rustagi. All rights reserved.


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
    
    @IBAction func onChange(sender: AnyObject) {
        var tipArray = [0.15,0.2,0.25]
        let tipPercentage = tipArray[tipControl.selectedSegmentIndex]
        var billAmount: Double
        var tipAmount: Double
        var totalAmount: Double
        if amountTextField.text?.isEmpty == false {
            billAmount = Double(amountTextField.text!)!
            tipAmount = billAmount * tipPercentage;
            totalAmount = billAmount + tipAmount;
        }
        else {
            billAmount = 0.00;
            tipAmount = 0.00;
            totalAmount = 0.00;
        }
        tipValueLabel.text = "$\(tipAmount)"
        totalAmountLabel.text = "$\(totalAmount)"
    }
}

