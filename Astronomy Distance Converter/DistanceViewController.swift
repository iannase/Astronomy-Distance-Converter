//
//  FourthViewController.swift
//  Astronomy Distance Calculator
//
//  Created by Ian on 2/17/17.
//  Copyright © 2017 IanAnnase. All rights reserved.
//

import UIKit

class DistanceViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var arcSecondField: UITextField!
    @IBOutlet weak var parsecField: UITextField!
    @IBOutlet weak var lightYearField: UITextField!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    @IBAction func touch(_ sender: Any) {
        
        if arcSecondField.text == "" || lightYearField.text == "" || parsecField.text == ""
        {
            return
        }
        
        var parsecs = 0.0, lightYears = 0.0
        let arcSeconds = Double(arcSecondField.text!)!
        
        parsecs = 1 / arcSeconds
        lightYears = parsecs * 3.26
        
        parsecField.text = NumberFormatter.localizedString(from: NSNumber(value: parsecs), number: NumberFormatter.Style.decimal)
        lightYearField.text = NumberFormatter.localizedString(from: NSNumber(value: lightYears), number: NumberFormatter.Style.decimal)
        
        
        return
    }
    
    @IBAction func touch2(_ sender: Any) {
        
        if arcSecondField.text == "" || lightYearField.text == "" || parsecField.text == ""
        {
            return
        }
        
        let parsecs = Double(parsecField.text!)!
        var lightYears = 0.0, arcSeconds = 0.0
        
        arcSeconds = 1 / parsecs
        lightYears = parsecs * 3.26
        
        lightYearField.text = NumberFormatter.localizedString(from: NSNumber(value: lightYears), number: NumberFormatter.Style.decimal)
        arcSecondField.text = String(arcSeconds)
        
        
        return
    }
    
    @IBAction func touch3(_ sender: Any) {
        
        if arcSecondField.text == "" || lightYearField.text == "" || parsecField.text == ""
        {
            return
        }
        
        var parsecs = 0.0, arcSeconds = 0.0
        let lightYears = Double(lightYearField.text!)!
        
        parsecs = lightYears * 0.306601
        arcSeconds = 1 / parsecs
        
        parsecField.text = NumberFormatter.localizedString(from: NSNumber(value: parsecs), number: NumberFormatter.Style.decimal)
        arcSecondField.text = String(arcSeconds)
        
        
        return
    }
    
    
    @IBAction func Reset(_ sender: Any) {
        parsecField.text = "0"
        lightYearField.text = "0"
        arcSecondField.text = "0"
    }
    
    
    func dismissKeyboard() {
        parsecField.resignFirstResponder()
        lightYearField.resignFirstResponder()
        arcSecondField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        parsecField.delegate = self
        lightYearField.delegate = self
        arcSecondField.delegate = self
        
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
