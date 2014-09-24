//
//  ViewController.swift
//  dogYears
//
//  Created by James Springfield on 23/09/2014.
//  Copyright (c) 2014 James Springfield. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var dogYearsLabel : UILabel
    @IBOutlet var enterHumanYearsTextField : UITextField
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender : UIButton) {
        let convertToDogYears:Double = 7
        dogYearsLabel.hidden = false
        let humanYearsToDouble = Double((enterHumanYearsTextField.text as NSString).doubleValue)
        dogYearsLabel.text = "\(humanYearsToDouble * convertToDogYears)"
        enterHumanYearsTextField.resignFirstResponder()
    }

    @IBAction func convertToRealDogYearsButtonPressed(sender : AnyObject) {
        dogYearsLabel.hidden = false
        let humanYearsToDouble = Double((enterHumanYearsTextField.text as NSString).doubleValue)
        if humanYearsToDouble >  2 {
            dogYearsLabel.text = "\((humanYearsToDouble - 2) * 4 + 21)"
        }
        else {
            dogYearsLabel.text = "\(humanYearsToDouble * 10.5)"
        }
        enterHumanYearsTextField.resignFirstResponder()
        
    }
    
}

