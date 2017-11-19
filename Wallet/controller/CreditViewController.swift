//
//  CreditViewController.swift
//  Wallet
//
//  Created by swapnilgaikwad on 10/11/17.
//  Copyright © 2017 FunDone. All rights reserved.
//

import UIKit

class CreditViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func submitClicked(_ sender: UIButton) {
        var amount = 0
        if(textField.text != nil) {
            amount = Int(textField.text!)!
        }
        Wallet.credit(money: amount)
        self.navigationController?.popViewController(animated: true)
    }
}
