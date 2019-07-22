//
//  NovaCorViewController.swift
//  AulaStoryBoard
//
//  Created by student on 22/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class NovaCorViewController: UIViewController {


    @IBOutlet weak var corLabel: UILabel!

    var cor: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        corLabel.text = cor
        
        if cor != nil {
            switch cor!.lowercased() {
            case "verde":
                self.view.backgroundColor = UIColor.green
            case "rosa":
                self.view.backgroundColor = UIColor.magenta
            case "roxo":
                self.view.backgroundColor = UIColor.purple
            default:
                self.view.backgroundColor = UIColor.black
            }
        }
    }
    

}
