//
//  ViewController.swift
//  calc
//
//  Created by Felipe Rocha Oliveira on 09/08/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstValueTextField: UITextField!
    @IBOutlet weak var secondValueTextField: UITextField!
    @IBOutlet weak var operatorSegmentControl: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func operationClick(_ sender: UISegmentedControl) {
        guard let value1: String = self.firstValueTextField.text else {return}
        guard let value2: String = self.secondValueTextField.text else {return}
        
        let result = self.calculate(operation: sender.selectedSegmentIndex, value1: Int(value1) ?? 0, value2: Int(value2) ?? 0)
        
        self.printResult(result)
    }
    
    
    func calculate(operation: Int, value1: Int, value2: Int) -> Double {
        switch operation {
            case 0:
                return Double(value1 + value2)
            case 1:
                return Double(value1 - value2)
            case 2:
                return Double(value1 * value2)
            case 3:
                return Double(value1 / value2)
            default:
                return 0
        }
    }
    
    func printResult(_ result: Double) {
        self.resultLabel.text = "result =====> \(String(result))"
    }
}

