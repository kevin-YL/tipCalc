//
//  ViewController.swift
//  tip
//
//  Created by Kevin Sekuj on 12/13/20.

import UIKit

class ViewController: UIViewController {
    
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
        partySizeLabel.text = "1"
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        billAmountLabel.text = billAmountLabel.text! + String(sender.tag-1)

    }
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

    @IBAction func clearButton(_ sender: UIButton) {
        billAmountLabel.text = ""
        tipPercentageLabel.text = ""
        totalLabel.text = ""
        tipControl.selectedSegmentIndex = UISegmentedControl.noSegment
    }
    
    @IBAction func partySizeValueChanged(_ sender: UIButton) {
        partySizeLabel.text = String(partySize.value)
        tipPercentageLabel.text = ""
        totalLabel.text = ""
        tipControl.selectedSegmentIndex = UISegmentedControl.noSegment
    }
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {

        let bill = Double(billAmountLabel.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = (bill * tipPercentages[tipControl.selectedSegmentIndex]) / partySize.value
        
        let total = (bill / partySize.value) + tip

        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        }
    }



