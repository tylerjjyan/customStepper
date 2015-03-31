//
//  CustomStepper.swift
//  customStepper
//
//  Created by Tyler Yan on 2015-03-30.
//  Copyright (c) 2015 Foodee. All rights reserved.
//

import UIKit
import QuartzCore

class CustomStepper: UIControl {

    let lowerThumbLayer = CALayer()
    let upperThumbLayer = CALayer()
    
    var thumbWidth: CGFloat {
        return CGFloat(bounds.height/5)
        
    }
    
    var trackTintColor = UIColor(red: 0.2, green: 0.8, blue: 0.5, alpha: 0.1)
    
    var thumbTintColor = UIColor(white: 0.5, alpha: 1.0)
    
    var curvaceousness : CGFloat = 5.0
    
    let trackLayer = CustomStepperTrackLayer()
    
      override init(frame: CGRect) {
        super.init(frame: frame)
        
              trackLayer.customStepper = self
        trackLayer.contentsScale = UIScreen.mainScreen().scale
        layer.addSublayer(trackLayer)
        
        lowerThumbLayer.backgroundColor = UIColor.lightGrayColor().CGColor
        layer.addSublayer(lowerThumbLayer)
        
        upperThumbLayer.backgroundColor = UIColor.lightGrayColor().CGColor
        layer.addSublayer(upperThumbLayer)
    
        
        
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
   
    
    func updateLayerFrames() {
        CATransaction.begin()
        CATransaction.setDisableActions(true)
        
        trackLayer.frame = bounds.rectByInsetting(dx: 0.0, dy: bounds.height / 3)
        trackLayer.setNeedsDisplay()
        
        
        var lowerThumbCenter: CGFloat
        
        lowerThumbLayer.frame = CGRect(x: bounds.width*0.2, y: bounds.height / 2.5,
            width: 1.5, height: thumbWidth)
        lowerThumbLayer.setNeedsDisplay()
        
        
        var upperThumbCenter: CGFloat
        
        upperThumbLayer.frame = CGRect(x: bounds.width*0.8, y: bounds.height / 2.5,
            width: 1.5, height: thumbWidth)
        upperThumbLayer.setNeedsDisplay()
        
        CATransaction.commit()

        
    }

    override var frame: CGRect {
        didSet {
            updateLayerFrames()
        }
    }
    
}