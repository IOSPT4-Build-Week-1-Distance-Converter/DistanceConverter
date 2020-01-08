//
//  ConverterViewController.swift
//  DistanceConverter
//
//  Created by Chris Price on 12/18/19.
//  Copyright © 2019 Chris Price. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    var brain = ConverterBrain()
    
    @IBOutlet var numberToConvert: UITextField!
    @IBOutlet var result: UILabel!
    @IBOutlet var convertFromPickerView: UIPickerView!
    @IBOutlet var convertToPickerView: UIPickerView!
    @IBAction func convertButtonTapped(_ sender: Any) {
        guard let numbar = numberToConvert.text else {return}
        let number = Double(numbar)
        let result1 = brain.from(number!)
        let result2 = brain.to(result1)
        result.text = String(result2)
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView  ) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return brain.unitsArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        brain.unitsArray[row]
    }
    
}
