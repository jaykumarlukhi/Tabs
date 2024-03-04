//
//  LabThreeViewController.swift


import UIKit

class LabThreeViewController: UIViewController {

    // FirstName, LastName, CountryName Age - Input TextFields
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var countryTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    
    
    @IBOutlet var lab4Button: UIBarButtonItem!
    
    // Data Text View
    @IBOutlet var myTextView: UITextView!
    // Error Messsage Text View
    @IBOutlet var messageLableView: UITextView!
    
    
    // Add, Submit, Clear Buttons View
    @IBOutlet var addButtonView: UIButton!
    @IBOutlet var submitButtonView: UIButton!
    @IBOutlet var clearButtonView: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //------ FirstName TextField View
        firstNameTextField.attributedPlaceholder = NSAttributedString(
            string: "Enter first name",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
        )
        firstNameTextField.layer.borderWidth = 0.5
        firstNameTextField.layer.borderColor = UIColor.white.cgColor
        firstNameTextField.layer.cornerRadius = 10

        
        //------ LastName TextField View
        lastNameTextField.attributedPlaceholder = NSAttributedString(
            string: "Enter last name",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
        )
        lastNameTextField.layer.borderWidth = 0.5
        lastNameTextField.layer.borderColor = UIColor.white.cgColor
        lastNameTextField.layer.cornerRadius = 10
        
        
        //------ Country TextField View
        countryTextField.attributedPlaceholder = NSAttributedString(
            string: "Enter country",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
        )
        countryTextField.layer.borderWidth = 0.5
        countryTextField.layer.borderColor = UIColor.white.cgColor
        countryTextField.layer.cornerRadius = 10
        
        
        //------ Age TextField View
        ageTextField.attributedPlaceholder = NSAttributedString(
            string: "Enter age",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
        )
        ageTextField.layer.borderWidth = 0.5
        ageTextField.layer.borderColor = UIColor.white.cgColor
        ageTextField.layer.cornerRadius = 10
        
        
        //------ My Data TextView
        myTextView.layer.borderWidth = 0.5
        myTextView.layer.borderColor = UIColor.white.cgColor
        myTextView.layer.cornerRadius = 10
        myTextView.text = "Please click add button to display a data"
        myTextView.textColor = UIColor.gray
        
        
        //------ Add Button View
        addButtonView.layer.borderWidth = 0.5
        addButtonView.layer.cornerRadius = 10
        addButtonView.layer.borderColor = UIColor(red: 0, green: 255/255, blue: 0, alpha: 1).cgColor
        
        
        //------ Submit Button View
        submitButtonView.layer.borderWidth = 0.5
        submitButtonView.layer.cornerRadius = 10
        submitButtonView.layer.borderColor = UIColor(red: 4/255, green: 143/255, blue: 189/255, alpha: 1).cgColor

    
        //------ Clear Button View
        clearButtonView.layer.borderWidth = 0.5
        clearButtonView.layer.cornerRadius = 10
        clearButtonView.layer.borderColor = UIColor(red: 255/255, green: 0, blue: 2/255, alpha: 1).cgColor
        
        
        //------ For keyboard Dismmisser
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))


        view.addGestureRecognizer(tap)
        
    }
    
    
    
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
       view.endEditing(true)
    }
    

    // Add Button Function
    @IBAction func addButton(_ sender: Any) {
        if firstNameTextField.text != "" {
            if lastNameTextField.text != "" {
               if countryTextField.text != "" {
                   if ageTextField.text != ""  {
                       messageLableView.text = "Please Click Submit Button"
                       messageLableView.textColor = UIColor.blue
                       
                       // set a data in string
                       myTextView.text = "Full name : " + firstNameTextField.text! + " " + lastNameTextField.text! + "\nCountry :" + countryTextField.text! + "\nAge :" + ageTextField.text!
                       myTextView.textColor = UIColor.white
                       
                    }else{
                        messageLableView.text = "Please enter your age"
                        messageLableView.textColor = UIColor.red
                    }
               }else{
                   messageLableView.text = "Please enter country name"
                   messageLableView.textColor = UIColor.red
               }
            }else{
                messageLableView.text = "Please enter last name"
                messageLableView.textColor = UIColor.red
            }
        }else{
            messageLableView.text = "Please enter first name"
            messageLableView.textColor = UIColor.red
        }
    }
    
    
    // Submit Button Function
    @IBAction func submitButton(_ sender: Any) {
        if(firstNameTextField.text != "" && lastNameTextField.text != "" && countryTextField.text != "" && ageTextField.text != ""){
            messageLableView.text = "Data submitted successfully"
            messageLableView.textColor = UIColor.green
            firstNameTextField.text = ""; lastNameTextField.text = "";  countryTextField.text = ""; ageTextField.text = "";
        }else{
            messageLableView.text = "Opps, Something is missing, Please click the Add button"
            messageLableView.textColor = UIColor.red
        }
        
    }
    
    
    // Clear Button Function
    @IBAction func clearButton(_ sender: Any) {
        firstNameTextField.text = ""
        lastNameTextField.text = ""
        countryTextField.text = ""
        ageTextField.text = ""
        messageLableView.text = ""
        myTextView.text = "Please click add button to display a data"
        myTextView.textColor = UIColor.gray
    }
    

}

//
//extension ViewController: UITextFieldDelegate{
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if textField == firstNameTextField {
//            firstNameTextField.resignFirstResponder()
//            lastNameTextField.becomeFirstResponder()
//        } else if textField == lastNameTextField {
//            lastNameTextField.resignFirstResponder()
//            countryTextField.becomeFirstResponder()
//        } else if textField == countryTextField {
//            countryTextField.resignFirstResponder()
//            ageTextField.becomeFirstResponder()
//        } else if textField == ageTextField {
//            ageTextField.resignFirstResponder()
//        }
//
//        return true
//    }
//}
