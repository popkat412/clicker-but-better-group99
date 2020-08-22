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
    
    var count = 0
    var secondsPassed = 0
    
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.secondsPassed += 1
            print("Updating timer: \(self.secondsPassed)")
        }
    }

    @IBAction func screenTapped(_ sender: Any) {
        count += 1
        clickerLabel.text = "\(count)"
        
        if count >= 20 {
            timer.invalidate()
            clickerLabel.text = "You took \(secondsPassed)s"
            instructionLabel.isHidden = true
        }
    }
    
}

