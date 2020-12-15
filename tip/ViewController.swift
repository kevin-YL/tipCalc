//
//  ViewController.swift
//  tip
//
//  Created by Kevin Sekuj on 12/13/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var paramView: UIView!
    @IBOutlet weak var partySize: UIStepper!
    
    // method for simulating calculator input
    
    var billAmountTextFieldNum = 0.00
    
    @IBAction func numbers(_ sender: UIButton) {
        billAmountTextField.text = billAmountTextField.text! + String(sender.tag-1)
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        partySize.layer.cornerRadius = 10.0
    }
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        // calculate tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update tip and total labels
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

