//
//  ViewController.swift
//  subject_1
//
//  Created by 長谷川孝太 on 2021/05/02.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var inputedNumberArray: [UITextField]!
    @IBOutlet weak var calculatedNumberLabel: UILabel!
    
    @IBAction func calculateButton(_ sender: UIButton) {

        let resultNumber = inputedNumberArray
            .map { Int($0.text!) ?? 0 }
            .reduce(0, +)
        calculatedNumberLabel.text = "\(resultNumber)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for textField in inputedNumberArray {
            textField.delegate = self
            textField.keyboardType = UIKeyboardType.numberPad
        }
    }
}

extension ViewController: UITextFieldDelegate {
    
}
