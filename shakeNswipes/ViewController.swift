//
//  ViewController.swift
//  shakeNswipes
//
//  Created by Talha Qamar on 1/16/15.
//  Copyright (c) 2015 Talha Qamar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var swipeRight  = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeRight)
        var swipeUp  = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeUp.direction = UISwipeGestureRecognizerDirection.Up
        self.view.addGestureRecognizer(swipeUp)
       
        var swipeDown  = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeDown.direction = UISwipeGestureRecognizerDirection.Down
        self.view.addGestureRecognizer(swipeDown)
        var swipeLeft  = UISwipeGestureRecognizer(target: self, action: "swiped:")
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeLeft)
    }
    func swiped(gesture : UIGestureRecognizer)
    {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer
        {
            switch swipeGesture.direction
            {
            case  UISwipeGestureRecognizerDirection.Right:
                println("User swiped right")
                break;
            case  UISwipeGestureRecognizerDirection.Up:
                println("User swiped Up")
            case  UISwipeGestureRecognizerDirection.Down:
                println("User swiped Down")
                break;
            case  UISwipeGestureRecognizerDirection.Left:
                println("User swiped Left")
                
            default:
                break;
            }
        }
    
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        if event.subtype == UIEventSubtype.MotionShake
        {
            println("User shake the device")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

