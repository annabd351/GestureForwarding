//
//  TargetView.swift
//  ScrollViewAutolayoutTemplate
//
//  Created by Anna Dickinson on 11/24/14.
//  Copyright (c) 2014 Anna Dickinson. All rights reserved.
//

import UIKit

class TargetView: UIView {

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

     @IBAction func handleGesture(gestureRecognizer: UIGestureRecognizer) {
        let location = gestureRecognizer.locationInView(self)
        print("[TargetView] Got gesture.  Location \(location) ")
        if (pointInside(location, withEvent: nil)) {
            println("Inside");
        }
        else {
            println("Outside");
        }
    }
}
