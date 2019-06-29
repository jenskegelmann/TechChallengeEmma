//
//  FirstViewController.swift
//  emma
//
//  Created by Jens Kegelmann on 28.06.19.
//  Copyright © 2019 Jens Kegelmann. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var round_button: UIButton!
    @IBOutlet weak var round_emergency_button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        round_button.layer.cornerRadius=10.0
        round_button.layer.masksToBounds=true
        round_emergency_button.layer.cornerRadius=10.0
        round_emergency_button.layer.masksToBounds=true
        
        
    }

    @IBAction func logout(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func emergency(_ sender: Any) {
        
        tabBarController?.selectedIndex = 1
    }
    
}

