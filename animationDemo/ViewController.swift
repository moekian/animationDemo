//
//  ViewController.swift
//  animationDemo
//
//  Created by Mohammad Kiani on 2020-06-08.
//  Copyright © 2020 mohammadkiani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var playBtn: UIButton!
    
    var isAnimated = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func play(_ sender: UIButton) {
        
        imageView.animationImages = [
            UIImage(named: "frame_0_delay-0.1s.gif")!,
            UIImage(named: "frame_1_delay-0.1s.gif")!,
            UIImage(named: "frame_2_delay-0.1s.gif")!,
            UIImage(named: "frame_3_delay-0.1s.gif")!,
            UIImage(named: "frame_4_delay-0.1s.gif")!,
            UIImage(named: "frame_5_delay-0.1s.gif")!
        ]
        imageView.animationDuration = 1
        // infinite loop
        imageView.animationRepeatCount = 0
        
        if isAnimated {
            imageView.stopAnimating()
            playBtn.setTitle("Play", for: [])
            isAnimated = false
        } else {
            imageView.startAnimating()
            playBtn.setTitle("Stop", for: [])
            isAnimated = true
        }
    }
    
    @IBAction func fadeIn(_ sender: UIButton) {
        imageView.alpha = 0
        UIView.animate(withDuration: 2) {
            self.imageView.alpha = 1
        }
    }
    
    @IBAction func slideIn(_ sender: UIButton) {
        imageView.center = CGPoint(x: imageView.center.x - 500, y: imageView.center.y)
        UIView.animate(withDuration: 2) {
            self.imageView.center = CGPoint(x: self.imageView.center.x + 500, y: self.imageView.center.y)
        }
    }
    
    @IBAction func grow(_ sender: UIButton) {
        let width = imageView.frame.size.width
        let height = imageView.frame.size.height
        
        let x = imageView.frame.origin.x
        let y = imageView.frame.origin.y
        
        imageView.frame = CGRect(x: x, y: y, width: 0, height: 0)
        UIView.animate(withDuration: 2) {
            self.imageView.frame = CGRect(x: x, y: y, width: width, height: height)
        }
    }
    
    
}

