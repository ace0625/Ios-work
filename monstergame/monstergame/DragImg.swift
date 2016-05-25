//
//  dragImg.swift
//  monstergame
//
//  Created by Dan Hyunchan Kim on 2/29/16.
//  Copyright © 2016 hyunchan. All rights reserved.
//

import Foundation
import UIKit

class DragImg: UIImageView
{
    var originalPoint: CGPoint!
    var dropTarget: UIView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder )
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        originalPoint = self.center
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first
        {
            let position = touch.locationInView(self.superview)
            self.center = CGPointMake(position.x, position.y)
            
            
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first, let target = dropTarget
        {
            let position = touch.locationInView(self.superview)
            if CGRectContainsPoint(target.frame, position)
            {
//                var notif = NSNotification(name: "onTagetDropped", object: nil)
                 
                NSNotificationCenter.defaultCenter().postNotification(NSNotification(name: "onTargetDropped", object: nil))
            }
        }
        self.center = originalPoint
    }
    
    
    
}