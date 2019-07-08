//
//  AccountViewController.swift
//  Emma
//
//  Created by Jens Kegelmann on 07.07.19.
//

import UIKit

class AccountViewController: UIViewController {

    @IBOutlet weak var logout: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logout(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
