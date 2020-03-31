//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBall = 0
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]
    
    @IBOutlet weak var askButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        askButton.layer.cornerRadius = 10
        askButton.layer.borderWidth = 1
        askButton.layer.borderColor = UIColor.white.cgColor
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        randomBall = Int.random(in: 0...4)
        imageView.image = ballArray[randomBall]
    }

}

