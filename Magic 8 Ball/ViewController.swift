//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by David on 22/6/18.
//  Copyright © 2018 David Torguet Martos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBallNumber : Int = 0
    
    @IBOutlet weak var ballImage: UIImageView!
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateImg()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func buttonAsk(_ sender: UIButton) {
        updateImg()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateImg()
    }
    
    func updateImg(){
        randomBallNumber = Int(arc4random_uniform(5))
        
        ballImage.image = UIImage(named: ballArray[randomBallNumber])
    }
    
}

