//
//  ConverterViewController.swift
//  DistanceConverter
//
//  Created by Chris Price on 12/18/19.
//  Copyright © 2019 Chris Price. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate{
    
    

    let units = ["mile", "yard", "feet", "inch", "kilometer", "meter", "decimeter", "centimeter", "millimeter", "nautical mile", "fathom", "league", "furlong", "rod", "chain"]
    
    
    var brain = ConverterBrain()
    
    @IBOutlet var numberToConvert: UITextField!
    @IBOutlet var result: UILabel!
    @IBOutlet var convertFromPickerView: UIPickerView!
    @IBOutlet var convertToPickerView: UIPickerView!
    @IBAction func convertButtonTapped(_ sender: Any) {
        guard let numbar = numberToConvert.text else {return}
        guard let number = Double(numbar) else {
            result.text = "Please enter a valid number"
            return
        }
        let numberFormatter = NumberFormatter()
        numberFormatter.maximumFractionDigits = 4
        let result1 = brain.from(number)
        let result2 = brain.to(result1)
        result.text = numberFormatter.string(for: result2)
    }
    
    //MARK:- Setting up the delegate and data source properties
    
    override func viewDidLoad() {
            super.viewDidLoad()
                convertToPickerView.delegate = self
                convertToPickerView.dataSource = self
                convertFromPickerView.delegate = self
                convertFromPickerView.dataSource = self
                numberToConvert.delegate = self
        
        self.setupToHideKeyboardOnTapOnView()
    }
    
    
    
    //MARK:-Configuring the Picker Views
    
    func hideKeyboard() {
        numberToConvert.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        hideKeyboard()
        return true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return units.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return units[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 0 {
            let selectedRow = units[row]
            switch selectedRow {
            case "mile":
                brain.fromUnitType = .mile
            case "yard":
                brain.fromUnitType = .yard
            case "feet":
                brain.fromUnitType = .feet
            case "inch":
                brain.fromUnitType = .inch
            case "kilometer":
                brain.fromUnitType = .kilometer
            case "meter":
                brain.fromUnitType = .meter
            case "decimeter":
                brain.fromUnitType = .decimeter
            case "centimeter":
                brain.fromUnitType = .centimeter
            case "millimeter":
                brain.fromUnitType = .millimeter
            case "nautical mile":
                brain.fromUnitType = .nauticalMile
            case "fathom":
                brain.fromUnitType = .fathom
            case "league":
                brain.fromUnitType = .league
            case "furlong":
                brain.fromUnitType = .furlong
            case "rod":
                brain.fromUnitType = .rod
            case "chain":
                brain.fromUnitType = .chain
            default:
                brain.fromUnitType = .mile
            }
            
        }
        
        if pickerView.tag == 1 {
            let selectedRow = units[row]
            switch selectedRow {
            case "mile":
                brain.toUnitType = .mile
            case "yard":
                brain.toUnitType = .yard
            case "feet":
                brain.toUnitType = .feet
            case "inch":
                brain.toUnitType = .inch
            case "kilometer":
                brain.toUnitType = .kilometer
            case "meter":
                brain.toUnitType = .meter
            case "decimeter":
                brain.toUnitType = .decimeter
            case "centimeter":
                brain.toUnitType = .centimeter
            case "millimeter":
                brain.toUnitType = .millimeter
            case "nautical mile":
                brain.toUnitType = .nauticalMile
            case "fathom":
                brain.toUnitType = .fathom
            case "league":
                brain.toUnitType = .league
            case "furlong":
                brain.toUnitType = .furlong
            case "rod":
                brain.toUnitType = .rod
            case "chain":
                brain.toUnitType = .chain
            default:
                brain.toUnitType = .mile
            }
            
        }
    }
}

extension UIViewController {
  func setupToHideKeyboardOnTapOnView()
  {
    let tap: UITapGestureRecognizer = UITapGestureRecognizer(
      target: self,
      action: #selector(UIViewController.dismissKeyboard))
    tap.cancelsTouchesInView = false
    view.addGestureRecognizer(tap)
  }
  @objc func dismissKeyboard()
  {
    view.endEditing(true)
  }
}
