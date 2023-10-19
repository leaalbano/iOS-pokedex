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
        
        //Background View
        self.view.backgroundColor = UIColor(red: 43/255.0, green: 41/255.0, blue: 44/255.0, alpha: 1)
        
        //HEADER FRAME
        let headerFrame = CGRect(x: 0 , y: 0 , width: 393 , height: 203)
        let HeaderView = UIView(frame: headerFrame)
        HeaderView.backgroundColor = UIColor(red: 212/255.0, green: 59/255.0, blue: 71/255.0, alpha: 1)
        view.addSubview(HeaderView)
        
        //TEXT IN HEADER (CHARMANDER LABEL 
        let pokemonCharater = UILabel(frame: CGRectMake(20, 80, 353, 39.33))
        pokemonCharater.font = UIFont.systemFont(ofSize:31 , weight: .bold)
        pokemonCharater.textColor = UIColor.white
        pokemonCharater.text = "Charmander"
        
        view.addSubview(pokemonCharater)
        
        
        //Button Config
        self.button.backgroundColor = UIColor.systemRed
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
    
    
        
    @IBAction func buttonSegue(_ sender: UIButton)
    {
        self.performSegue(withIdentifier: "HomePage", sender: sender)
    }
    
   
        
}
