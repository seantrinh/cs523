//
//  ViewController.swift
//  BasicCalculator
//
//  Created by Sean Trinh on 6/9/18.
//  Copyright © 2018 Sean Trinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var Output: UILabel!
    var firstNumber = ""
    var secondNumber = ""
    var operand = ""
    var result: String = ""
    
    @IBAction func myClr(_ sender: AnyObject) {
        result = ""
        firstNumber = ""
        secondNumber = ""
        operand = ""
        Output.text = ""
    }
    
    @IBAction func myOne(_ sender: AnyObject) {
        if result == "" {
            Output.text = "1"
            result = "1"
        }
        else {
            result = result + "1"
            Output.text = result
        }
    }
    
    @IBAction func myTwo(_ sender: AnyObject) {
        if result == "" {
            Output.text = "2"
            result = "2"
        }
        else {
            result = result + "2"
            Output.text = result
        }
    }
    
    @IBAction func myThree(_ sender: AnyObject) {
        if result == "" {
            Output.text = "3"
            result = "3"
        }
        else {
            result = result + "3"
            Output.text = result
        }
    }
    
    @IBAction func myFour(_ sender: AnyObject) {
        if result == "" {
            Output.text = "4"
            result = "4"
        }
        else {
            result = result + "4"
            Output.text = result
        }
    }
    
    @IBAction func myFive(_ sender: AnyObject) {
        if result == "" {
            Output.text = "5"
            result = "5"
        }
        else {
            result = result + "5"
            Output.text = result
        }
    }
    
    @IBAction func mySix(_ sender: AnyObject) {
        if result == "" {
            Output.text = "6"
            result = "6"
        }
        else {
            result = result + "6"
            Output.text = result
        }
    }
    
    @IBAction func mySeven(_ sender: AnyObject) {
        if result == "" {
            Output.text = "7"
            result = "7"
        }
        else {
            result = result + "7"
            Output.text = result
        }
    }
    
    @IBAction func myEight(_ sender: AnyObject) {
        if result == "" {
            Output.text = "8"
            result = "8"
        }
        else {
            result = result + "8"
            Output.text = result
        }
    }
    
    @IBAction func myNine(_ sender: AnyObject) {
        if result == "" {
            Output.text = "9"
            result = "9"
        }
        else {
            result = result + "9"
            Output.text = result
        }
    }
    
    @IBAction func myZero(_ sender: AnyObject) {
        if result == "" {
            Output.text = "0"
            result = "0"
        }
        else {
            result = result + "0"
            Output.text = result
        }
    }
    
    @IBAction func myAdd(_ sender: AnyObject) {
        firstNumber = result
        Output.text = result + "+"
        operand = "+"
        result = ""
    }
    
    @IBAction func mySubtract(_ sender: AnyObject) {
        firstNumber = result
        Output.text = result + "-"
        operand = "-"
        result = ""
    }
    
    @IBAction func myMult(_ sender: AnyObject) {
        firstNumber = result
        Output.text = result + "*"
        operand = "*"
        result = ""
    }
    
    @IBAction func myDivide(_ sender: AnyObject) {
        firstNumber = result
        Output.text = result + "/"
        operand = "/"
        result = ""
    }
    
    @IBAction func myEqual(_ sender: AnyObject) {
        if firstNumber == "" || result == "" { }
        else {
            let firstNumberInt:Double = Double(firstNumber)!
            let secondNumberInt:Double = Double(result)!
        
            var finalResult:Double = 0
            if operand == "+" {
                finalResult = firstNumberInt + secondNumberInt
            }
            else if operand == "-" {
                finalResult = firstNumberInt - secondNumberInt
            }
            else if operand == "*" {
                finalResult = firstNumberInt * secondNumberInt
            }
            else if operand == "/" {
                finalResult = firstNumberInt / secondNumberInt
            }
            Output.text = ""
            Output.text = String(finalResult)
        }
    }


}

