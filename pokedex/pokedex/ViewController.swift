//
//  ViewController.swift
//  pokedex
//
//  Created by Lea Albano on 10/13/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nickNameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func BackgroundTapped(_ sender:UITapGestureRecognizer)
    {
        self.nickNameField.resignFirstResponder()
        print("The screen was tapped!")
    }


}

