//
//  HelloViewController.swift
//  SecondKadaiApp
//
//  Created by 齋藤万璃夢 on 2020/10/03.
//  Copyright © 2020 mari.saito. All rights reserved.
//

import UIKit

class HelloViewController: UIViewController {
    
    // 2画面目のLabelを、StoryboardでこのViewControllerにIBOutletとして接続しておく
    @IBOutlet weak var label: UILabel!
    
    // 受け取るためのプロパティ（変数）を宣言しておく
    var Name: String  = ""


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let HelloName = Name
        label.text = "こんにちは、 \(HelloName) さん"

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
