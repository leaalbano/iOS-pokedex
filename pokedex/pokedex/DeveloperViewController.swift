
import UIKit

class DeveloperViewController: UIViewController {
    
    var button: UIButton!
    var Namechange: UIButton!
    var NameLabel: UILabel!
    var DevLabel: UILabel!
    
    let names: [String] = [
        "Lea Albano",
        "Saul Andrade",
        "Mason Cotterill",
        "Alejandro Guerrero"
    ]
    
    var currentNameIndex: Int = 0
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        print("The button was clicked!")
        self.performSegue(withIdentifier: "HomePage", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The DeveloperViewController loaded its view!")
    }
    
    override func loadView() {
        super.loadView()
        
        // Background View
        self.view.backgroundColor = UIColor(red: 43/255.0, green: 41/255.0, blue: 44/255.0, alpha: 1)
        
        // HEADER VIEW with Auto Layout
        let HeaderView = UIView()
        HeaderView.translatesAutoresizingMaskIntoConstraints = false
        HeaderView.backgroundColor = UIColor(red: 212/255.0, green: 59/255.0, blue: 71/255.0, alpha: 1)
        view.addSubview(HeaderView)
        
        // Constraints for HeaderView
        let headerTop = HeaderView.topAnchor.constraint(equalTo: self.view.topAnchor)
        let headerLeft = HeaderView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
        let headerRight = HeaderView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        let headerHeight = HeaderView.heightAnchor.constraint(equalToConstant: 203)
        NSLayoutConstraint.activate([headerTop, headerLeft, headerRight, headerHeight])
        
        // TEXT IN HEADER (DEVELOPER LABEL)
        let developerTitle = UILabel()
        developerTitle.translatesAutoresizingMaskIntoConstraints = false
        developerTitle.font = UIFont.systemFont(ofSize:31 , weight: .bold)
        developerTitle.textColor = UIColor.white
        developerTitle.text = "Developers"
        HeaderView.addSubview(developerTitle)
        
        let dtCenterX = developerTitle.centerXAnchor.constraint(equalTo: HeaderView.centerXAnchor)
        let dtCenterY = developerTitle.centerYAnchor.constraint(equalTo: HeaderView.centerYAnchor)
        NSLayoutConstraint.activate([dtCenterX, dtCenterY])
        
        // Setting up NameLabel
        NameLabel = UILabel()
        NameLabel.translatesAutoresizingMaskIntoConstraints = false
        NameLabel.text = names[currentNameIndex]
        NameLabel.font = UIFont.systemFont(ofSize: 20)
        NameLabel.textColor = UIColor.white
        NameLabel.textAlignment = .center
        self.view.addSubview(NameLabel)
        
        let nlCenterX = NameLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        let nlCenterY = NameLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -50)
        nlCenterX.isActive = true
        nlCenterY.isActive = true
        
        // Setting up Namechange button
        Namechange = UIButton(type: .system)
        Namechange.translatesAutoresizingMaskIntoConstraints = false
        Namechange.setTitle("Change Name", for: .normal)
        Namechange.setTitleColor(.white, for: .normal)
        Namechange.backgroundColor = UIColor(red: 212/255.0, green: 59/255.0, blue: 71/255.0, alpha: 1)
        Namechange.layer.cornerRadius = 8
        Namechange.contentEdgeInsets = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        Namechange.addTarget(self, action: #selector(changeName), for: .touchUpInside)
        self.view.addSubview(Namechange)
        
        let ncCenterX = Namechange.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        let ncTopCon = Namechange.topAnchor.constraint(equalTo: NameLabel.bottomAnchor, constant: 20)
        ncCenterX.isActive = true
        ncTopCon.isActive = true
        
        // HomePage button setup
        button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Homepage", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 212/255.0, green: 59/255.0, blue: 71/255.0, alpha: 1)
        button.layer.cornerRadius = 8
        button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        button.addTarget(self, action: #selector(buttonClicked(_:)), for: .touchUpInside)
        self.view.addSubview(button)
        
        let bCenterX = button.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor)
        let bBottomCon = button.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -50)
        bCenterX.isActive = true
        bBottomCon.isActive = true
    }
    
    @objc func changeName() {
        
        print("The changeName button was clicked!")
        // Increment the index to the next name
        currentNameIndex = (currentNameIndex + 1) % names.count
        // Set the new name to the NameLabel
        NameLabel.text = names[currentNameIndex]
    }
}
