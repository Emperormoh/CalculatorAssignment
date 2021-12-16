//
//  ViewController.swift
//  CalculatorGame
//
//  Created by Wema Bank on 16/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var firstNumber:Double = 0
    var secondNumber:Double = 0
    var result:Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        firstTextField.text = ""
        secondTextField.text = ""
        resultLabel.text = ""
    }
    
    @IBAction func additionBtn(_ sender: UIButton) {
        calculateIt(task: "Addition")
    }
    
    @IBAction func subtractionBtn(_ sender: UIButton) {
        calculateIt(task: "Subtraction")
    }
    
    @IBAction func multiplicationBtn(_ sender: UIButton) {
        calculateIt(task: "Multiplication")
    }
    
    @IBAction func divisionBtn(_ sender: UIButton) {
        calculateIt(task: "Division")
    }
    
    
    func calculateIt(task:String){
            if(firstTextField.text == "" || secondTextField.text == ""){
                showAlert(message: "Please Input values for calculation")
                return
            }
            else{
                firstNumber = Double(firstTextField.text!)!
                secondNumber = Double(secondTextField.text!)!
                switch(task){
                case "Addition":
                    result = firstNumber + secondNumber
                case "Subtraction":
                    result = firstNumber - secondNumber
                case "Multiplication":
                    result = firstNumber * secondNumber
                case "Division":
                    result = firstNumber / secondNumber
                default:
                    return
                }
                let resultText = String(format: "%g", result)
                resultLabel.text = "Result : \(resultText)"
            }
        }
    
    func showAlert(message: String){
        let alert = UIAlertController(title: "Error!", message: message, preferredStyle: UIAlertController.Style.alert)
        
        let alertAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { (UIAlertAction) in
            print("Ok Clicked")
        }
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion: nil)
    }
}

