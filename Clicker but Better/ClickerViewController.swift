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
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func screenTapped(_ sender: Any) {

        count += 1
        clickerLabel.text = "\(count)"
    }
    
}

