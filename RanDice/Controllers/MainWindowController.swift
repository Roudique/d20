//
//  RDQMainWindowController.swift
//  RanDice
//
//  Created by Oleksandr Rudavka on 2018-02-20.
//  Copyright © 2018 roudique. All rights reserved.
//

import Cocoa

class RDQMainWindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
    
        window?.isMovableByWindowBackground = true
        window?.titlebarAppearsTransparent = true
//        window?.titleVisibility = .hidden
    }

}
