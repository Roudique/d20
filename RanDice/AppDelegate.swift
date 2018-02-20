//
//  AppDelegate.swift
//  RanDice
//
//  Created by Oleksandr Rudavka on 2018-02-14.
//  Copyright © 2018 roudique. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        let mathExpression = NSExpression(format: "4 + 5 * 20")
        let mathValue = mathExpression.expressionValue(with: nil, context: nil) as? Int
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

