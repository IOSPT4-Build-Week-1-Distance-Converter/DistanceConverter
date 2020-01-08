//
//  ConverterViewController.swift
//  DistanceConverter
//
//  Created by Chris Price on 12/18/19.
//  Copyright © 2019 Chris Price. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    let units = ["mile", "yard", "feet", "inch", "kilometer", "meter", "decimeter", "centimeter", "millimeter", "nautica mile", "fathom", "league", "furlong", "rod", "chain"]
    
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
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        <#code#>
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        <#code#>
    }
    
}
