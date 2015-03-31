//
//  CustomStepperButtons.swift
//  customStepper
//
//  Created by Tyler Yan on 2015-03-30.
//  Copyright (c) 2015 Foodee. All rights reserved.
//

import UIKit

class CustomStepperButtons: UIButton {
    
    let image = UIImage(named: "newPlus.png") as UIImage?
    let button : UIButton!
    
   
    override init(frame: CGRect) {
        super.init(frame: frame)

        button = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        button.frame = CGRectMake(100, 100, 100, 100)
        button.setImage(image, forState: .Normal)
        button.addTarget(self, action: "btnTouched:", forControlEvents:.TouchUpInside)
    
        
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
