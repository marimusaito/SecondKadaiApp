//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 齋藤万璃夢 on 2020/10/03.
//  Copyright © 2020 mari.saito. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    // TextField
    @IBOutlet weak var textField: UITextField!

    // 文字列保存用の変数
    var textFieldString = ""

    override func viewDidLoad() {
            super.viewDidLoad()
            self.textField.delegate = self

    }
    
    // キーボード入力の決定ボタンで、入力用キーボードを非表示にする
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    // UITextField以外の部分をタッチした場合に非表示
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       // TextFieldから文字を取得
        textFieldString = textField.text!
        self.view.endEditing(true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のHelloViewControllerを取得する
        let helloViewController:HelloViewController = segue.destination as! HelloViewController
        // 遷移先のhelloViewControllerで宣言しているNameに値を代入して渡す
        helloViewController.Name = textFieldString
        
    }
        
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        // TextFieldの中身をクリア
        textField.text = ""

    }

}

