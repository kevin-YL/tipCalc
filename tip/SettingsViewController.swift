//
//  SettingsViewController.swift
//  tip
//
//  Created by Kevin Sekuj on 12/13/20.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var infoBox: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        infoBox.layer.cornerRadius = 10.00
    }
    

}
