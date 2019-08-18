//
//  FirstViewController.swift
//  ConversionApp
//
//  Created by Kris Hayzelden on 20/02/2018.
//  Copyright © 2018 Kris Hayzelden. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func numberPressed(_ sender: UIButton) {
        
        switch sender.titleLabel?.text
        {
            case "1"?:
                textField.text?.append("1")
            
            case "2"?:
                textField.text?.append("2")
            
            case "3"?:
                textField.text?.append("3")
            
            case "4"?:
                textField.text?.append("4")
            
            case "5"?:
                textField.text?.append("5")
            
            case "6"?:
                textField.text?.append("6")
            
            case "7"?:
                textField.text?.append("7")
            
            case "8"?:
                textField.text?.append("8")
            
            case "9"?:
                textField.text?.append("9")
            
            case "0"?:
                textField.text?.append("0")
            
            case "."?:
                if (textField.text?.isEmpty)!
                {
                    textField.text?.append("0.")
                }
                else if !(textField.text?.contains("."))!
                {
                    textField.text?.append(".")
                }
            
            case "⌫"?:
                if (!(textField.text?.isEmpty)! && (textField.text != "-"))
                {
                    textField.text?.remove(at: (textField.text?.index(before: (textField.text?.endIndex)!))!)
                }
            
            default:
                textField.text?.append("?")
        }
    }
}

