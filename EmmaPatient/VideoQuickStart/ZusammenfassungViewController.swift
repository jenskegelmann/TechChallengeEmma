//
//  ZusammenfassungViewController.swift
//  Emma
//
//  Created by Jens Kegelmann on 05.07.19.
//

import UIKit

class ZusammenfassungViewController: UIViewController {

    @IBOutlet weak var next_button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        next_button.layer.cornerRadius=10.0
        next_button.layer.masksToBounds=true
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
