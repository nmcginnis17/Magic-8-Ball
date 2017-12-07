//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Nicholas McGinnis on 12/6/17.
//  Copyright © 2017 Sinnig Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomAnswer = 0
    
    @IBOutlet weak var eightBallAnswer: UIImageView!

    
    let ballAnswers = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        giveMeAnswer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapAskBtn(_ sender: UIButton) {
        giveMeAnswer()
    }
    
    
    func giveMeAnswer() {
        randomAnswer = Int(arc4random_uniform(5))
        eightBallAnswer.image = UIImage(named: ballAnswers[randomAnswer])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        giveMeAnswer()
    }

}

