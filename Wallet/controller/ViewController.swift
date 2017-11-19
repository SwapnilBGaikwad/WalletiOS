//
//  ViewController.swift
//  Wallet
//
//  Created by swapnilgaikwad on 09/11/17.
//  Copyright © 2017 FunDone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var balanceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Wallet.credit(money: 0)
        balanceLabel.text = "Balance : \(Wallet.getAmount())"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        balanceLabel.text = "Balance : \(Wallet.getAmount())"
    }
    
}

