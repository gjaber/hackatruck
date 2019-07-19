//
//  ViewController.swift
//  AulaAutoLayout
//
//  Created by student on 18/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var digitarNomeTextField: UITextField!
    
    @IBOutlet weak var exibirNomeLabel: UILabel!
   
    @IBAction func exibir(_ sender: Any) {
        let nomeDigitado  = digitarNomeTextField.text!
        
        exibirNomeLabel.text = nomeDigitado

        digitarNomeTextField.text = ""
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    

}

