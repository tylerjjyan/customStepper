//
//  ViewController.swift
//  customStepper
//
//  Created by Tyler Yan on 2015-03-27.
//  Copyright (c) 2015 Foodee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number = 0
    @IBOutlet weak var numberLabel: UILabel!
    
//    @IBAction func minusButton(sender: AnyObject) {
//        
//        if (number > 0) {
//            
//            number--
//            
//        }
//        
//        numberLabel.text = "\(number)"
//       
//    }
//    
//    @IBAction func plusButton(sender: AnyObject) {
//        
//        if (number < 10) {
//            
//            number++
//        }
//        
//        numberLabel.text = "\(number)"
//        
//    }

    let customStepper = CustomStepper(frame: CGRectZero)
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(customStepper)
      
    }
    
    override func viewDidLayoutSubviews() {
        let margin: CGFloat = 60.0
        let width = view.bounds.width - 2.0 * margin
        customStepper.frame = CGRect(x: margin, y: margin + topLayoutGuide.length,
            width: width, height: 100)
        
           }
    
    
}
