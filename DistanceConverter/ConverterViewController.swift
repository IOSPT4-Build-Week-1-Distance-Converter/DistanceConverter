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
    @IBOutlet var covertFromPickerView: UIPickerView!
    @IBOutlet var convertToPickerView: UIPickerView!
    
    @IBAction func convertButtonTapped(_ sender: Any) {
        guard let numbar = numberToConvert.text else {return}
        let number = Double(numbar)
        brain.from(number!)
        
    }
    
    func numberOfComponents(in pickerView:  ) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        <#code#>
    }
    
}
