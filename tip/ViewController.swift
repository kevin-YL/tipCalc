//
//  ViewController.swift
//  tip
//
//  Created by Kevin Sekuj on 12/13/20.
//
// TODO:
//  autoresize  when ints too large
//  multi lang support menu
//  dark mode(?) flipped colors?
//  settings sliders
//  transition animation
//  silhouette background

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var paramView: UIView!
    @IBOutlet weak var partySize: UIStepper!
 
    override func viewDidLoad() {
        super.viewDidLoad()
    
        partySize.layer.cornerRadius = 10.0
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        billAmountLabel.text = billAmountLabel.text! + String(sender.tag-1)
    }

    @IBAction func backspace(_ sender: UIButton) {
        if billAmountLabel.text!.count <= 1 {
            billAmountLabel.text = ""
        } else {
            billAmountLabel.text!.remove(at: billAmountLabel.text!.index(before: billAmountLabel.text!.endIndex))
            }
    }
    
    @IBAction func decimal(_ sender: UIButton) {
        if billAmountLabel.text!.count < 1 {
            billAmountLabel.text = "0."
        } else {
            if billAmountLabel.text!.contains(".") {
                billAmountLabel.text! += "."

            }
        }
    }

    @IBAction func clearButton(_ sender: UIButton) {
        billAmountLabel.text = ""

        tipPercentageLabel.text = ""
        totalLabel.text = ""
        
    }
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        

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

