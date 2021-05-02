//
//  ViewController.swift
//  subject_1
//
//  Created by 長谷川孝太 on 2021/05/02.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet private weak var inputedNumber1: UITextField!
    @IBOutlet private weak var inputedNumber2: UITextField!
    @IBOutlet private weak var inputedNumber3: UITextField!
    @IBOutlet private weak var inputedNumber4: UITextField!
    @IBOutlet private weak var inputedNumber5: UITextField!
    
    @IBOutlet private weak var calculatedNumberLabel: UILabel!
    @IBAction private func calculateButton(_ sender: UIButton) {
        var resultNumber = 0
        if let number1 = Int(inputedNumber1.text!) {
            resultNumber += number1
        }
        if let number2 = Int(inputedNumber2.text!) {
            resultNumber += number2
        }
        if let number3 = Int(inputedNumber3.text!) {
            resultNumber += number3
        }
        if let number4 = Int(inputedNumber4.text!) {
            resultNumber += number4
        }
        if let number5 = Int(inputedNumber5.text!) {
            resultNumber += number5
        }
        calculatedNumberLabel.text = "\(resultNumber)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.inputedNumber1.delegate = self
        self.inputedNumber1.keyboardType = UIKeyboardType.numberPad
        self.inputedNumber2.delegate = self
        self.inputedNumber2.keyboardType = UIKeyboardType.numberPad
        self.inputedNumber3.delegate = self
        self.inputedNumber3.keyboardType = UIKeyboardType.numberPad
        self.inputedNumber4.delegate = self
        self.inputedNumber4.keyboardType = UIKeyboardType.numberPad
        self.inputedNumber5.delegate = self
        self.inputedNumber5.keyboardType = UIKeyboardType.numberPad
    }
}

extension ViewController: UITextFieldDelegate {
// ----------------以下のメソッドが適用されない------------------
//    改行、または、Returnキーが押されたら呼び出されるメソッド
    func textFieldShouldReturn(_ textField:UITextField) -> Bool {
        //キーボードをしまう
        self.view.endEditing(true)
        //改行するかどうか
        return false
    }
}
