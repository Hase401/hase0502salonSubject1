//
//  ViewController.swift
//  subject_1
//
//  Created by 長谷川孝太 on 2021/05/02.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var inputedNumberTextFields: [UITextField]!
    @IBOutlet private weak var calculatedNumberLabel: UILabel!
    
    @IBAction func calculateButton(_ sender: UIButton) {

        let resultNumber = inputedNumberTextFields
            .compactMap { Int($0.text!) }
            .reduce(0, +)
        calculatedNumberLabel.text = "\(resultNumber)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        inputedNumberTextFields.forEach {
            $0.delegate = self
            $0.keyboardType = .numberPad
        }
    }
}

extension ViewController: UITextFieldDelegate {}
