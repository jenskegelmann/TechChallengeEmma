//
//  FirstViewController.swift
//  emma
//
//  Created by Jens Kegelmann on 28.06.19.
//  Copyright © 2019 Jens Kegelmann. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func logout(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
}

