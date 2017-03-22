//
//  ViewController.swift
//  sampleWarikanApp
//
//  Created by Muneharu Onoue on 2017/03/13.
//  Copyright © 2017年 Muneharu Onoue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ninzu: UITextField!
    @IBOutlet weak var kingaku: UITextField!
    @IBOutlet weak var kekka: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 数字のみ入力できるように設定
        ninzu.keyboardType = .numberPad
        kingaku.keyboardType = .numberPad
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func keisan(_ sender: UIButton) {
        // 入力値を取得
        let intNinzu = Int(ninzu.text!)!
        let intKingaku = Int(kingaku.text!)!

        // 総金額/人数 = 一人あたり
        let intKekka = intKingaku / intNinzu
        // ラベルに結果を表示
        kekka.text = "\(intKekka)円"
        
        // キーボード閉じる
        view.endEditing(true)
    }
}
