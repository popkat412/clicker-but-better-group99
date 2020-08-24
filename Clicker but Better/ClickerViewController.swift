//
//  ViewController.swift
//  Clicker but Better
//
//  Created by Wang Yunze on 22/8/20.
//  Copyright © 2020 yunze. All rights reserved.
//

import UIKit

class ClickerViewController: UIViewController {

    @IBOutlet weak var clickerLabel: UILabel!
    @IBOutlet weak var instructionLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    var count = 0
    var secondsPassed = 0.0
    
    var timer: Timer!
    
    var timing: Timing!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            self.secondsPassed += 0.1
            print("Updating timer: \(self.secondsPassed)")
        }
        backButton.isHidden = true
    }

    @IBAction func screenTapped(_ sender: Any) {
        count += 1
        clickerLabel.text = "\(count)"
        
        if count >= 20 {
            timer.invalidate()
            secondsPassed = round(secondsPassed * 100) / 100
            clickerLabel.text = "You took \(secondsPassed)s"
            timing = Timing(timeTaken: secondsPassed, timestamp: Date())
            instructionLabel.isHidden = true
            backButton.isHidden = false
        }
    }
    
}

