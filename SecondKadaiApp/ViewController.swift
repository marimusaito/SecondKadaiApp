//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 齋藤万璃夢 on 2020/10/03.
//  Copyright © 2020 mari.saito. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

        // TextField
        @IBOutlet weak var textField: UITextField!

        // 文字列保存用の変数
        var textFieldString = ""

        override func viewDidLoad() {
                super.viewDidLoad()

        }
    @IBAction func disideButton(_ sender: Any) {
        // TextFieldから文字を取得
        textFieldString = textField.text!

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のHelloViewControllerを取得する
        let helloViewController:HelloViewController = segue.destination as! HelloViewController
        // 遷移先のResultViewControllerで宣言しているNameに値を代入して渡す
        helloViewController.Name = textFieldString
        
    }
        
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        // TextFieldの中身をクリア
        textField.text = ""

    }

}

