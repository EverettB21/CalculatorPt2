//
//  ViewController.swift
//  Calculator - Lab
//
//  Created by Everett Brothers on 8/30/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet var allButtons: [UIButton]!
    var equation: Equation!
    
    var numArray: [String: Double] = [:]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        var intLabel: Double = Double(label.text!) ?? 0
        switch sender.currentTitle {
        case "Clear":
            label.text = "0"
        case "+/-":
            if intLabel / -1 == -intLabel {
                label.text = "-\(label.text ?? "0")"
            } else {
                label.text = "+\(label.text ?? "0")"
            }
        case "%":
            intLabel *= 0.01
            label.text = String(intLabel)
        case "÷":
            equation.first = intLabel
            equation.type = "divide"
            label.text = "0"
        case "X":
            equation.first = intLabel
            equation.type = "multiply"
            label.text = "0"
        case "-":
            equation.first = intLabel
            equation.type = "subtract"
            label.text = "0"
        case "+":
            equation.first = intLabel
            equation.type = "add"
            label.text = "0"
        case "1":
            label.text = "\(label.text ?? "0")1"
        case "2":
            label.text = "\(label.text ?? "0")2"
        case "3":
            label.text = "\(label.text ?? "0")3"
        case "4":
            label.text = "\(label.text ?? "0")4"
        case "5":
            label.text = "\(label.text ?? "0")5"
        case "6":
            label.text = "\(label.text ?? "0")6"
        case "7":
            label.text = "\(label.text ?? "0")7"
        case "8":
            label.text = "\(label.text ?? "0")8"
        case "9":
            label.text = "\(label.text ?? "0")9"
        case "0":
            label.text = "\(label.text ?? "0")0"
        case ".":
            label.text = "\(label.text ?? "0")."
        case "=":
            equation.second = intLabel
            equation.solve()
            label.text = String(equation.total)
        default:
            print("Error with button")
        }
    }
    
}

