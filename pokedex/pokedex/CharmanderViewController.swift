import UIKit

class CharmanderViewController: UIViewController{
    
    var button: UIButton!
    
    @objc func buttonClicked(_ b: UIButton) {
        print("The button was clicked!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("The CharmanderViewController loaded its view!")
    }
    
    override func loadView() {
        super.loadView()
        
        self.button = UIButton(type: UIButton.ButtonType.system)
        self.button.translatesAutoresizingMaskIntoConstraints = false
        self.button.setTitle(
            "Homepage",
            for: UIControl.State.normal
        )
        
        self.button.backgroundColor = UIColor.systemRed
        
        
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
        
        
        // Constraints for the homepage button
        
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
