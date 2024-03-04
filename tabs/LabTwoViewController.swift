//
//  LabTwoViewController.swift


/*
 Image Reference
https://tlconestog.ca/wp-content/uploads/2019/11/cropped-Teaching-and-Learning-logo-black-background-horizontal-gold-1.jpg
 */

import UIKit

class LabTwoViewController: UIViewController {
    // Image View
    @IBOutlet var imageView: UIImageView!
    
    // Parent Image View
    @IBOutlet var imageParentView: UIView!
    
    // Counter Lable View
    @IBOutlet var counterLableView: UILabel!
    
    // Small Decrement Button View
    @IBOutlet var smallDecrementButton: UIButton!
    // Setter Value Lable View
    @IBOutlet var setterValueLableView: UILabel!
    // Small Increment Button View
    @IBOutlet var smallIncrementButton: UIButton!
    
    
    // Variable for Counter
    var counter = 0
    // Variable for flag setter value
    var setterValue = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes

        
        //------ Counter Lable View
        counterLableView.textColor = UIColor.white
        
        
        //------ Small Decrement Button View
        smallDecrementButton.layer.borderColor = UIColor.white.cgColor
        smallDecrementButton.layer.borderWidth = 2
        smallDecrementButton.layer.cornerRadius = smallDecrementButton.frame.size.width/2

        
        //------ Setter Value Lable View
        setterValueLableView.textColor = .white
        setterValueLableView.text = String(1)
        
        
        //------ Small Increment Button View
        smallIncrementButton.layer.borderColor = UIColor.white.cgColor
        smallIncrementButton.layer.borderWidth = 2
        smallIncrementButton.layer.cornerRadius = smallIncrementButton.frame.size.width/2
    
    }
    
     
    // Navigation to Lab3
    @IBAction func labThreeNavigation(_ sender: Any) {
        self.navigationController?.pushViewController(LabThreeViewController(), animated: true)
    }
    
    
    // Set Background Graddient View
    override func viewWillAppear(_ animated: Bool) {
        let gradient = CAGradientLayer()

        gradient.frame = view.bounds
        gradient.colors = [UIColor.darkGray.cgColor, UIColor.black.cgColor]

        self.view.layer.insertSublayer(gradient, at: 0)

    }

   

    // Green Increment Button function
    @IBAction func increment(_ sender: Any) {
        counter = counter + setterValue
        counterLableView.text = String(counter)
    }


    // Red Decrement Button Function
    @IBAction func decrement(_ sender: Any) {
        if(counter - setterValue >= 0){
            counter = counter - setterValue
            counterLableView.text = String(counter)
        }
    }
    
    
    // Reset Button Function
    @IBAction func reset(_ sender: Any) {
        counter = 0
        setterValue = 1
        counterLableView.text = String(counter)
        setterValueLableView.text = String(setterValue)
    }
    
    
    // Small Increase Button Function
    @IBAction func increasedBy(_ sender: Any) {
        setterValue = setterValue + 1
        setterValueLableView.text = String(setterValue)
    }
    
    
    // Small Decrease Button Function
    @IBAction func decreaseBy(_ sender: Any) {
        if(setterValue > 0){
            setterValue = setterValue - 1
            setterValueLableView.text = String(setterValue)
        }
    }
    
}
