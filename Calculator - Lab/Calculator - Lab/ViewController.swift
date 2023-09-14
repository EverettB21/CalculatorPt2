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
    var equation = Equation(first: 0.0, second: 0.0, type: "")
    var check = true
    
    var numArray: [String: Double] = [:]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        var intLabel: Double = Double(label.text!) ?? 0
        var str = label.text
        switch sender.titleLabel?.text {
        case "Clear":
            str = "0"
            check = false
        case "+/-":
            intLabel = -1 * intLabel
            str = String(intLabel)
        case "%":
            intLabel *= 0.01
            str = String(intLabel)
        case "÷":
            equation.first = intLabel
            equation.type = "divide"
            str = "0"
        case "X":
            equation.first = intLabel
            equation.type = "multiply"
            str = "0"
        case "-":
            equation.first = intLabel
            equation.type = "subtract"
            str = "0"
        case "+":
            equation.first = intLabel
            equation.type = "add"
            str = "0"
        case "1":
            str?.append("1")
            check = true
        case "2":
            str?.append("2")
            check = true
        case "3":
            str?.append("3")
            check = true
        case "4":
            str?.append("4")
            check = true
        case "5":
            str?.append("5")
            check = true
        case "6":
            str?.append("6")
            check = true
        case "7":
            str?.append("7")
            check = true
        case "8":
            str?.append("8")
            check = true
        case "9":
            str?.append("9")
            check = true
        case "0":
            str?.append("0")
            check = true
        case ".":
            str?.append(".")
            check = false
        case "=":
            equation.second = intLabel
            equation.solve()
            str = String(equation.total)
        default:
            print("Error with button")
        }
        if label.text == "0.0" && check {
            str?.removeFirst(3)
        } else if label.text == "0" && check {
            str?.removeFirst()
        }
        label.text = str
    }
    
}

