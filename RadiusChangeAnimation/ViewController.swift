//
//  ViewController.swift
//  RadiusChangeAnimation
//
//  Created by Hilarion on 2016/07/10.
//  Copyright © 2016年 Klockwerks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let animation = CASpringAnimation(keyPath: "cornerRadius")

    @IBOutlet weak var animationView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // animation start
        startAnimation()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func startAnimation(){
        animation.mass = 1.0
        animation.damping = 10.0
        animation.stiffness = 240.0
        
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
        animation.fromValue = 200
        animation.toValue = 90
        
        animation.removedOnCompletion = false
        animation.fillMode = kCAFillModeForwards
        animation.duration = 1.0
        
        animation.delegate = self
        
        animationView.layer.addAnimation(animation, forKey: "animation")
    }


}

