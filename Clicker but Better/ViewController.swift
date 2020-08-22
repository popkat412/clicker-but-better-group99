//
//  ViewController.swift
//  Clicker but Better
//
//  Created by Wang Yunze on 22/8/20.
//  Copyright © 2020 yunze. All rights reserved.
//

import UIKit

class ClickerViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTGR(_ sender: UITapGestureRecognizer) {
        count += 1
        
        counterLabel.text = "\(count)"
    }
    
}

