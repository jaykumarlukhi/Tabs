//
//  QuadraticViewController.swift


import UIKit

class QuadraticViewController: UIViewController {
    
    // TextField A, TextField B, TextField C View
    @IBOutlet var textFieldA: UITextField!
    @IBOutlet var textFieldB: UITextField!
    @IBOutlet var textFieldC: UITextField!
    
    // Lable A, Label B, Label C View
    @IBOutlet var labelA: UILabel!
    @IBOutlet var labelB: UILabel!
    @IBOutlet var labelC: UILabel!
    
    // Text View
    @IBOutlet var myTextview: UITextView!
    
    
    // Calculate Button View
    @IBOutlet var calculateButton: UIButton!
    // Cancel Button View
    @IBOutlet var clearButton: UIButton!
    
    let myCornerRadius = 5.0
    let myBorderWidth = 0.5
    let myBorderColor = UIColor.black.cgColor
    let myBackgroundColor = UIColor(red: 233/255, green: 173/255, blue: 2/255, alpha: 1)

    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        //------ Label A View
        labelA.layer.cornerRadius = myCornerRadius
        labelA.layer.backgroundColor = myBackgroundColor.cgColor

        //------ TextField A View
        textFieldA.attributedPlaceholder = NSAttributedString(
            string: "Enter value A",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.black.withAlphaComponent(0.3)]
        )
        textFieldA.layer.borderWidth = myBorderWidth
        textFieldA.layer.borderColor = myBorderColor
        textFieldA.layer.cornerRadius = myCornerRadius
//        textFieldA.layer.backgroundColor = myBackgroundColor.cgColor


        //------ Label B View
        labelB.layer.cornerRadius = myCornerRadius
        labelB.layer.backgroundColor = myBackgroundColor.cgColor


        //------ TextField B View
        textFieldB.attributedPlaceholder = NSAttributedString(
            string: "Enter value B",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.black.withAlphaComponent(0.3)]
        )
        textFieldB.layer.borderWidth = myBorderWidth
        textFieldB.layer.borderColor = myBorderColor
        textFieldB.layer.cornerRadius = myCornerRadius
//        textFieldB.layer.backgroundColor = myBackgroundColor.cgColor


        //------ Label C View
        labelC.layer.cornerRadius = myCornerRadius
        labelC.layer.backgroundColor = myBackgroundColor.cgColor


        //------ TextField C View
        textFieldC.attributedPlaceholder = NSAttributedString(
            string: "Enter value C",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.black.withAlphaComponent(0.3)]
        )
        textFieldC.layer.borderWidth = myBorderWidth
        textFieldC.layer.borderColor = myBorderColor
        textFieldC.layer.cornerRadius = myCornerRadius
//        textFieldC.layer.backgroundColor = myBackgroundColor.cgColor
        
        
        //------ Text View
        myTextview.layer.cornerRadius = 10
        myTextview.layer.borderWidth = 0.5
        myTextview.layer.borderColor = UIColor.black.cgColor
        myTextview.text = ""
        myTextview.textColor = UIColor.black.withAlphaComponent(0.5)
        
        
        //------ Calculate Button View
        calculateButton.layer.cornerRadius = 10
        calculateButton.layer.shadowColor = UIColor.black.cgColor
        calculateButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        calculateButton.layer.shadowOpacity = 0.2
        calculateButton.layer.shadowRadius = 15
        
        
        //------ Clear Button View
        clearButton.layer.cornerRadius = 10
        clearButton.layer.shadowColor = UIColor.black.cgColor
        clearButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        clearButton.layer.shadowOpacity = 0.2
        clearButton.layer.shadowRadius = 15
        
              
        // For keyboard Dismmisser
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

        view.addGestureRecognizer(tap)
    }

    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

    
    // Calculate Formula Button Function
    @IBAction func calculateFormula(_ sender: Any) {
        // Dissmiss the keyboard
        dismissKeyboard()
        
        
        if(textFieldA.text == ""){
            if(textFieldB.text == ""){
                myTextview.text = "A and B should not be empty"
                if(textFieldC.text == ""){
                    myTextview.text = "Enter a value for A , B and C to find X."
                }
            }else if(textFieldC.text == ""){
                if(textFieldA.text == ""){
                    myTextview.text = "A and C should not be empty"
                }else{
                    myTextview.text = "C should not be empty"
                }
            }else{
                myTextview.text = "A should not be empty"
            }
        }else if(textFieldB.text == ""){
            if(textFieldC.text == ""){
               myTextview.text = "B and C should not be empty"
           }else{
               myTextview.text = "B and C should not be empty"
           }
        }else if(textFieldC.text == ""){
            myTextview.text = "C should not be empty"
        }else if(textFieldA.text == "0"){
            if(textFieldB.text == "0"){
                myTextview.text = "The value you entered for A and B are invalid"
                if(textFieldC.text == "0"){
                    myTextview.text = "The value you entered for A, B and C are invalid"
                }
            }else if(textFieldC.text == "0"){
                myTextview.text = "The value you entered for A and C are invalid"
            }else{
                myTextview.text = "The value you entered for A is invalid"
            }
        }else if(textFieldB.text == "0"){
            if(textFieldC.text == "0"){
               myTextview.text = "The value you entered for B and C are invalid"
           }else{
               myTextview.text = "The value you entered for B is invalid"
           }
        }else if(textFieldC.text == "0"){
            myTextview.text = "The value you entered for C is invalid"
        }else{
            let a = Int(textFieldA.text!) ?? 0
            let b = Int(textFieldB.text!) ?? 0
            let c = Int(textFieldC.text!) ?? 0
            
            let possibleResult = b*b - 4*a*c
            
            if(possibleResult == 0){
                // Only one real solution possible
                if(a != 0){
                   
                    let x = (Double(-1 * b) +  (sqrt(Double(possibleResult)))) / (2 * Double(a))
                    let a1 = (Double(a) * x * x) + (Double(b) * x) + Double(c)

                    myTextview.textColor = UIColor.black
                    myTextview.text = "b\u{00B2} - 4ac = \(possibleResult)\n( There is only one value for X )\n\n               -b + \u{221A}b\u{00B2} - 4ac\nx  =  ------------------------   =   \(x)\n                        2a        \n\na(x)\u{00B2} + bx + c = \(a1) ( x = \(x) )"

                    
                }else{
                    myTextview.text = "The value you entered for A is invalid"
                }
                
            }else if(possibleResult > 0){
                // Two real solution possible
                if(a != 0){
                    let x1 = (Double(-1 * b) +  (sqrt(Double(possibleResult)))) / (2 * Double(a))
                    let x2 = (Double(-1 * b) -  (sqrt(Double(possibleResult)))) / (2 * Double(a))
                    
                    let a1 = (Double(a) * x1 * x1) + (Double(b) * x1) + Double(c)
                    let a2 = (Double(a) * x2 * x2) + (Double(b) * x2) + Double(c)
          
                    myTextview.textColor = UIColor.black
                    myTextview.text = "b\u{00B2} - 4ac = \(possibleResult) \nb\u{00B2} - 4ac > 0 ( There are two values for X )\n\n               -b + \u{221A}b\u{00B2} - 4ac\nx\u{2081}  =  ------------------------   =   \(x1)\n                        2a        \n\n               -b - \u{221A}b\u{00B2} - 4ac\nx\u{2082}  =  ------------------------   =   \(x2)\n                        2a        \n\na(x\u{2081})\u{00B2} + bx\u{2081} + c = \(a1) ( x\u{2081} = \(x1) )\na(x\u{2082})\u{00B2} + bx\u{2082} + c = \(a2) ( x\u{2082} = \(x2) )"
                   
                }else{
                    let font:UIFont? = UIFont.systemFont(ofSize: 16)
                    myTextview.textColor = UIColor.red
                    myTextview.text = "The value you entered for A is invalid"
                }
            }else{
                // No real solution possible
                myTextview.textColor = UIColor.red
                myTextview.text = "b\u{00B2} - 4ac = \(possibleResult)\n\nb\u{00B2} - 4ac < 0 ( “There are no results since the discriminant is less than zero )"
            }
            
        }
        
    }
    
    
    // Clear Button Function
    @IBAction func clearFormula(_ sender: Any) {
        // Dissmiss the keyboard
        dismissKeyboard()
        
        // reset all value
        myTextview.textColor = UIColor.darkGray
        myTextview.text = "Enter a value for A and B to find C"
        textFieldA.text = ""
        textFieldB.text = ""
        textFieldC.text = ""
    }
    
}
