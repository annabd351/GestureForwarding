//
//  TouchInterceptorView.swift
//  ScrollViewAutolayoutTemplate
//
//  Created by Anna Dickinson on 11/24/14.
//  Copyright (c) 2014 Anna Dickinson. All rights reserved.
//

import UIKit

class TouchInterceptorView: UIView {

    weak var targetView: TargetView?
    
    override func hitTest(point: CGPoint, withEvent event: UIEvent?) -> UIView? {

        // Check to see if point is actually inside this view
        if pointInside(point, withEvent: event) {
            return targetView;
        }

        // If not, let superclass handle this
        return super.hitTest(point, withEvent: event)
    }
}
