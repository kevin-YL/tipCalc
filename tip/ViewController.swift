//
//  ViewController.swift
//  tip
//
//  Created by Kevin Sekuj on 12/13/20.

import UIKit

class ViewController: UIViewController {
    
    // initializing variables/UI objects
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var paramView: UIView!
    @IBOutlet weak var partySize: UIStepper!
    @IBOutlet weak var partySizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        partySize.layer.cornerRadius = 10.0
        // initializing UIStepper label
        partySizeLabel.text = "1"
    }
    
    // method for keypad numbers, assigning each number to a tag of n+1
    // each keypad button press sends a tag-1, e.g. pressing 7 sends tag8 - 1
    
    @IBAction func numbers(_ sender: UIButton) {
        billAmountLabel.text = billAmountLabel.text! + String(sender.tag-1)
    }
    
    // backspace button functionality, where if the count of the UITextLabel is less than 1
    // (no numbers on screen) then the label becomes blank. If UITextLabel count > 1, then backspace
    // deletes the tailing integer by calling remove on the array index before the endIndex (i.e the last
    // number on screen)
    
    @IBAction func backspace(_ sender: UIButton) {
        tipPercentageLabel.text = ""
        totalLabel.text = ""
        tipControl.selectedSegmentIndex = UISegmentedControl.noSegment
        if billAmountLabel.text!.count <= 1 {
            billAmountLabel.text = ""
        } else {
            billAmountLabel.text!.remove(at: billAmountLabel.text!.index(before: billAmountLabel.text!.endIndex))
        }
    }
    
    // decimal button functionality where a decimal keypress when no numbers are on screen inputs a "0." string in which
    // all further user input button presses follow. Otherise, the decimal follows the last input number, unless there is already
    // a decimal present.
    
    @IBAction func decimal(_ sender: UIButton) {
        tipPercentageLabel.text = ""
        totalLabel.text = ""
        tipControl.selectedSegmentIndex = UISegmentedControl.noSegment
        if billAmountLabel.text!.count < 1 {
            billAmountLabel.text = "0."
        } else {
            if billAmountLabel.text!.count >= 1 && billAmountLabel.text!.contains(".") == false {
                billAmountLabel.text! += "."
            }
            else if billAmountLabel.text!.contains(".") {
                billAmountLabel.text = billAmountLabel.text
            }
        }
    }
    
    // reset button clearing all labels/parameters
    
    @IBAction func clearButton(_ sender: UIButton) {
        billAmountLabel.text = ""
        tipPercentageLabel.text = ""
        totalLabel.text = ""
        tipControl.selectedSegmentIndex = UISegmentedControl.noSegment
    }
    
    // UIStepper method handling party size from values 1-8
    
    @IBAction func partySizeValueChanged(_ sender: UIButton) {
        partySizeLabel.text = String(partySize.value)
        tipPercentageLabel.text = ""
        totalLabel.text = ""
        tipControl.selectedSegmentIndex = UISegmentedControl.noSegment
    }
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    // method to calculate and display tip, accounting for size of party
    
    @IBAction func calculateTip(_ sender: Any) {
        // get initial bill amount and calculate tips
        let bill = Double(billAmountLabel.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        // calculate tip and total
        let tip = (bill * tipPercentages[tipControl.selectedSegmentIndex]) / partySize.value
        let total = (bill / partySize.value) + tip
        
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}
