//
//  ViewController.swift
//  tip
//
//  Created by Kevin Sekuj on 12/13/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var paramView: UIView!
    @IBOutlet weak var partySize: UIStepper!
    
    var billAmountLabelNumber = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        partySize.layer.cornerRadius = 10.0
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        billAmountLabel.text = billAmountLabel.text! + String(sender.tag-1)
        billAmountLabelNumber = Int(billAmountLabel.text!)!
        
    }

    @IBAction func backspace(_ sender: UIButton) {
        billAmountLabel.text = String(billAmountLabelNumber)
        var stringg = billAmountLabel.text
        if stringg!.count <= 1 {
            billAmountLabel.text = ""
            billAmountLabelNumber = 0;
        } else {
            stringg!.remove(at: stringg!.startIndex)
            billAmountLabel.text = stringg
            billAmountLabelNumber = Int(billAmountLabel.text!)!
            }
    }

    @IBAction func clearButton(_ sender: UIButton) {
        billAmountLabel.text = ""
        billAmountLabelNumber = 0;
        tipPercentageLabel.text = ""
        totalLabel.text = ""
        
    }
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        billAmountLabel.text = String(billAmountLabelNumber)
        let bill = Double(billAmountLabel.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        // calculate tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update tip and total labels
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

