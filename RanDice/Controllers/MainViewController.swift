//
//  ViewController.swift
//  RanDice
//
//  Created by Oleksandr Rudavka on 2018-02-14.
//  Copyright © 2018 roudique. All rights reserved.
//

import Cocoa

class RDQMainViewController: NSViewController {
    @IBOutlet weak var selectDicePopup: NSPopUpButton!
    @IBOutlet weak var resultLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    @IBAction func rollAction(_ sender: Any) {
        guard let diceString = selectDicePopup.selectedItem?.title else { return }
        
        if let dice = RDQDice.init(from: diceString) {
            resultLabel.stringValue = "\(RDQRandomizer.roll(dice: dice))"
        }
    }
    
    func setupUI() {
        setupDicePopup()
    }
    
    func setupDicePopup() {
        selectDicePopup.removeAllItems()
        selectDicePopup.addItems(withTitles: RDQDice.allValuNames())
    }

}

