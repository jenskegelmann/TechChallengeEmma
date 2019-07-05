//
//  SecondQuestionContoller.swift
//  Emma
//
//  Created by Jens Kegelmann on 29.06.19.
//

import UIKit

class SecondQuestionContoller: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var symptomPicker: UIPickerView!
    @IBOutlet weak var round_button_next: UIButton!
    
    let symptoms = ["Seit gerade eben", "Seit Stunden", "Seit einem Tag", "Seite mehr als einem Tag", "Kann ich nicht genau sagen"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return symptoms[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return symptoms.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        round_button_next.layer.cornerRadius=10.0
        round_button_next.layer.masksToBounds=true
        
        self.title = "Schritt 2/2"

        // Do any additional setup after loading the view.
    }

}
