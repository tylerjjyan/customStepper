//
//  CustomStepperTrackLayer.swift
//  customStepper
//
//  Created by Tyler Yan on 2015-03-30.
//  Copyright (c) 2015 Foodee. All rights reserved.
//
import UIKit
import QuartzCore

class CustomStepperTrackLayer: CALayer {
    weak var customStepper: CustomStepper?
    
    override func drawInContext(ctx: CGContext!) {
        if let slider = customStepper {
            let trackFrame = bounds.rectByInsetting(dx: 2.0, dy: 2.0)
            let cornerRadius = trackFrame.height * slider.curvaceousness / 3.2
            let trackPath = UIBezierPath(roundedRect: trackFrame, cornerRadius: cornerRadius)
            
            // Fill - with a subtle shadow
            let shadowColor = UIColor.grayColor()
            CGContextSetShadowWithColor(ctx, CGSize(width: 0.0, height: 1.0), 1.0, shadowColor.CGColor)
            CGContextSetFillColorWithColor(ctx, slider.trackTintColor.CGColor)
            CGContextAddPath(ctx, trackPath.CGPath)
            CGContextFillPath(ctx)
            
            // Outline
            CGContextSetStrokeColorWithColor(ctx, shadowColor.CGColor)
            CGContextSetLineWidth(ctx, 0.5)
            CGContextAddPath(ctx, trackPath.CGPath)
            CGContextStrokePath(ctx)
            
            
            
            
           
            
        }
        
    }
    
    

}