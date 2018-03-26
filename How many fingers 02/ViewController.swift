//
//  ViewController.swift
//  How many fingers 02
//
//  Created by D7703_15 on 2018. 3. 26..
//  Copyright © 2018년 D7703_15. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
        override func viewDidLoad() {
        super.viewDidLoad()
        input.delegate = self
        input.clearButtonMode = UITextFieldViewMode.always
            
    }
    @IBAction func guess(_ sender: Any) {
    // 랜덤 숫자 생성
        let number = arc4random() % 6
        print(number)
        let numberString = String(number)
        if input.text == numberString {
        resultLabel.text = "빙고!!"
        } else {
            resultLabel.text = "실패!! Try again!! 숨겨진 숫자는 현재\(number)"
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        input.backgroundColor = UIColor.green
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    input.resignFirstResponder()
        view.backgroundColor = UIColor.yellow
        return true
    }
    }




