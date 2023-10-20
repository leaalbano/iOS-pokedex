//
//  DeveloperViewController.swift
//  pokedex
//
//  Created by Alejandro on 10/20/23.
//

import UIKit

class DeveloperViewController: UIViewController {
    
    var button: UIButton!
    
    @IBAction func buttonClicked(_ sender: UIButton)
    {
        print("The button was clicked!")
        self.performSegue(withIdentifier: "HomePage", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("The DeveloperViewController loaded its view!")
    }
    
    
    override func loadView() {
        super.loadView()
        
        self.button = UIButton(type: UIButton.ButtonType.system)
        self.button.translatesAutoresizingMaskIntoConstraints = false
        self.button.setTitle(
            "Homepage",
            for: UIControl.State.normal
        )
        
        //Background View
        self.view.backgroundColor = UIColor(red: 43/255.0, green: 41/255.0, blue: 44/255.0, alpha: 1)
        
        //HEADER FRAME
        let headerFrame = CGRect(x: 0 , y: 0 , width: 393 , height: 203)
        let HeaderView = UIView(frame: headerFrame)
        HeaderView.backgroundColor = UIColor(red: 212/255.0, green: 59/255.0, blue: 71/255.0, alpha: 1)
        view.addSubview(HeaderView)
        
        //Button colors configed
        self.button.setTitleColor(.white, for: .normal)
        self.button.backgroundColor = UIColor(red: 212/255.0, green: 59/255.0, blue: 71/255.0, alpha: 1)
        //Button edges are set
        self.button.layer.cornerRadius = 8
        self.button.contentEdgeInsets = UIEdgeInsets(
                    top: 10,
                    left: 20,
                    bottom: 10,
                    right: 20
                )
        //Button location
        self.button.frame = CGRect(
            x: 20, y: 20,
            width: 100, height: 100
        )
        
        self.button.addTarget(
            self,
            action: #selector(buttonClicked(_:)),
            for: UIControl.Event.touchUpInside
        )
        
       
        self.view.addSubview(self.button)
        
        //button constraints
        let bCenterX = self.button.centerXAnchor.constraint(
            equalTo: self.view.safeAreaLayoutGuide.centerXAnchor
        )
        let bBottomCon = self.button.bottomAnchor.constraint(
            equalTo: self.view.safeAreaLayoutGuide.bottomAnchor,
            constant: -50
        )
        bCenterX.isActive = true
        bBottomCon.isActive = true
    }
}
