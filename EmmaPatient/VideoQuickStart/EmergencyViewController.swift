//
//  EmergencyViewController.swift
//  Emma
//
//  Created by Jens Kegelmann on 07.07.19.
//

import UIKit

class EmergencyViewController: UIViewController {

    @IBOutlet weak var round_button_1: UIButton!
    @IBOutlet weak var round_button_2: UIButton!
    @IBOutlet weak var round_button_3: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        round_button_1.layer.cornerRadius=10.0
        round_button_1.layer.masksToBounds=true
        round_button_2.layer.cornerRadius=10.0
        round_button_2.layer.masksToBounds=true
        round_button_3.layer.cornerRadius=10.0
        round_button_3.layer.masksToBounds=true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func call112(_ sender: Any) {
        guard let number = URL(string: "tel://112") else { return }
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(number)
        } else {
            // Fallback on earlier versions
        }
    }

}
