//
//  ViewController.swift
//  CalculoIMC
//
//  Created by student on 18/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var pesoTextField: UITextField!
    @IBOutlet weak var alturaTextField: UITextField!
    
    @IBOutlet weak var resultadoLabel: UILabel!
    
    @IBAction func calcularAction(_ sender: Any) {
        
        let peso = Double (pesoTextField.text!)
        let altura = Double (alturaTextField.text!)
        let resultado = peso! / (altura! * altura!)
        
        resultadoLabel.text = String (resultado)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

