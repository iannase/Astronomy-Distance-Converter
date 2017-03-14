//
//  FourthViewController.swift
//  Astronomy Distance Calculator
//
//  Created by Ian on 2/17/17.
//  Copyright © 2017 IanAnnase. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var parsecField: UITextField!
    @IBOutlet weak var lightYearField: UITextField!
    @IBOutlet weak var AUfield: UITextField!
    @IBOutlet weak var mileField: UITextField!
    @IBOutlet weak var kiloField: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var resetButton: UIButton!
    
    
    @IBAction func touch(_ sender: Any) {
        
        if lightYearField.text == "" || AUfield.text == "" || parsecField.text == "" || mileField.text == "" || kiloField.text == ""
        {
            return
        }
        
        let parsecs = Double(parsecField.text!)!
        var lightYears = 0.0, miles = 0.0, kilos = 0.0, astronomicalUnits = 0.0
        
        lightYears = parsecs * 3.26
        astronomicalUnits = lightYears * 63241.1
        miles = lightYears * 5878499810000
        kilos = lightYears * 9460528400000
        
        lightYearField.text = NumberFormatter.localizedString(from: NSNumber(value: lightYears), number: NumberFormatter.Style.decimal)
        AUfield.text = NumberFormatter.localizedString(from: NSNumber(value: astronomicalUnits), number: NumberFormatter.Style.decimal)
        mileField.text = NumberFormatter.localizedString(from: NSNumber(value: miles), number: NumberFormatter.Style.decimal)
        kiloField.text = NumberFormatter.localizedString(from: NSNumber(value: kilos), number: NumberFormatter.Style.decimal)
        
        return
    }
    
    @IBAction func touch2(_ sender: Any) {
        
        if lightYearField.text == "" || AUfield.text == "" || parsecField.text == "" || mileField.text == "" || kiloField.text == ""
        {
            return
        }
        
        var parsecs = 0.0, astronomicalUnits = 0.0, miles = 0.0, kilos = 0.0
        let lightYears = Double(lightYearField.text!)!
        
        parsecs = lightYears * 0.306601
        astronomicalUnits = lightYears * 63241.1
        miles = lightYears * 5878499810000
        kilos = lightYears * 9460528400000
        
        parsecField.text = NumberFormatter.localizedString(from: NSNumber(value: parsecs), number: NumberFormatter.Style.decimal)
        AUfield.text = NumberFormatter.localizedString(from: NSNumber(value: astronomicalUnits), number: NumberFormatter.Style.decimal)
        mileField.text = NumberFormatter.localizedString(from: NSNumber(value: miles), number: NumberFormatter.Style.decimal)
        kiloField.text = NumberFormatter.localizedString(from: NSNumber(value: kilos), number: NumberFormatter.Style.decimal)
        
        return
        
    }
    
    @IBAction func touch3(_ sender: Any) {
        
        if lightYearField.text == "" || AUfield.text == "" || parsecField.text == "" || mileField.text == "" || kiloField.text == ""
        {
            return
        }
        
        var parsecs = 0.0, lightYears = 0.0, astronomicalUnits = 0.0, kilos = 0.0
        let miles = Double(mileField.text!)!
        
        lightYears = miles / 5878499810000
        astronomicalUnits = lightYears * 63241.1
        parsecs = lightYears * 0.306601
        kilos = lightYears * 9460528400000
        
        parsecField.text = NumberFormatter.localizedString(from: NSNumber(value: parsecs), number: NumberFormatter.Style.decimal)
        lightYearField.text = NumberFormatter.localizedString(from: NSNumber(value: lightYears), number: NumberFormatter.Style.decimal)
        AUfield.text = NumberFormatter.localizedString(from: NSNumber(value: astronomicalUnits), number: NumberFormatter.Style.decimal)
        kiloField.text = NumberFormatter.localizedString(from: NSNumber(value: kilos), number: NumberFormatter.Style.decimal)
        
        return
        
    }
    
    @IBAction func touch4(_ sender: Any) {
        
        if lightYearField.text == "" || AUfield.text == "" || parsecField.text == "" || mileField.text == "" || kiloField.text == ""
        {
            return
        }
        
        var parsecs = 0.0, lightYears = 0.0, miles = 0.0, astronomicalUnits = 0.0
        let kilos = Double(kiloField.text!)!
        
        lightYears = kilos / 9460528400000
        astronomicalUnits = lightYears * 63241.1
        parsecs = lightYears * 0.306601
        miles = lightYears * 5878499810000
        
        parsecField.text = NumberFormatter.localizedString(from: NSNumber(value: parsecs), number: NumberFormatter.Style.decimal)
        lightYearField.text = NumberFormatter.localizedString(from: NSNumber(value: lightYears), number: NumberFormatter.Style.decimal)
        AUfield.text = NumberFormatter.localizedString(from: NSNumber(value: astronomicalUnits), number: NumberFormatter.Style.decimal)
        mileField.text = NumberFormatter.localizedString(from: NSNumber(value: miles), number: NumberFormatter.Style.decimal)
        
        return
        
    }
    
    @IBAction func touch5(_ sender: Any) {
        
        if lightYearField.text == "" || AUfield.text == "" || parsecField.text == "" || mileField.text == "" || kiloField.text == ""
        {
            return
        }
        
        var parsecs = 0.0, lightYears = 0.0, miles = 0.0, kilos = 0.0
        let astronomicalUnits = Double(AUfield.text!)!
        
        lightYears = astronomicalUnits / 63241.1
        parsecs = lightYears * 0.306601
        miles = lightYears * 5878499810000
        kilos = lightYears * 9460528400000
        
        parsecField.text = NumberFormatter.localizedString(from: NSNumber(value: parsecs), number: NumberFormatter.Style.decimal)
        lightYearField.text = NumberFormatter.localizedString(from: NSNumber(value: lightYears), number: NumberFormatter.Style.decimal)
        kiloField.text = NumberFormatter.localizedString(from: NSNumber(value: kilos), number: NumberFormatter.Style.decimal)
        mileField.text = NumberFormatter.localizedString(from: NSNumber(value: miles), number: NumberFormatter.Style.decimal)
        
        return
        
    }
    
    @IBAction func Reset(_ sender: Any) {
        parsecField.text = "0"
        lightYearField.text = "0"
        AUfield.text = "0"
        kiloField.text = "0"
        mileField.text = "0"
    }
    
    
    func dismissKeyboard() {
        parsecField.resignFirstResponder()
        lightYearField.resignFirstResponder()
        AUfield.resignFirstResponder()
        kiloField.resignFirstResponder()
        mileField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        parsecField.delegate = self
        lightYearField.delegate = self
        AUfield.delegate = self
        mileField.delegate = self
        kiloField.delegate = self
        
        let contentInsets = UIEdgeInsetsMake(0.0, 0.0, 100, 0.0);
        scrollView.contentInset = contentInsets;
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard)))
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
