//
//  InterceptorView.swift
//  ScrollViewAutolayoutTemplate
//
//  Created by Anna Dickinson on 11/24/14.
//  Copyright (c) 2014 Anna Dickinson. All rights reserved.
//

import UIKit

class InterceptorView: UIView {

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @IBOutlet weak var targetView1: UIView?
        
    override func hitTest(point: CGPoint, withEvent event: UIEvent?) -> UIView? {
        print("[Interceptor] Testing point: \(point) ")
        if self.pointInside(point, withEvent: event) {
            println("Hit")
            return targetView1
        }
        else {
            println()
            return nil;
        }
    }
}
