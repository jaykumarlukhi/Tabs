//
//  CanadaViewController.swift


import UIKit

class CanadaViewController: UIViewController {

    // City Image view
    @IBOutlet var cityImage: UIImageView!
    // TextField View
    @IBOutlet var cityTextFiled: UITextField!
    // Find My City Button View
    @IBOutlet var findCityButtonView: UIButton!
    // Error Message Text View
    @IBOutlet var errorMessageTextView: UITextView!


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //------ TextField view design
        cityTextFiled.attributedPlaceholder = NSAttributedString(
            string: "Enter city name",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
        )
        cityTextFiled.layer.borderWidth = 0.5
        cityTextFiled.layer.borderColor = UIColor(red: 85/255, green: 120/255, blue: 97/255, alpha: 1).cgColor
        cityTextFiled.layer.cornerRadius = 5
        
        
        //------ My City button view design
        findCityButtonView.layer.borderWidth = 0.5
        findCityButtonView.layer.cornerRadius = 10
        findCityButtonView.layer.borderColor = UIColor.black.cgColor
        
        
        //------ Error message view design
        errorMessageTextView.layer.backgroundColor = UIColor(white: 1, alpha: 0.0).cgColor
        errorMessageTextView.layer.cornerRadius = 10

        
        //------ For keyboard Dismmisser
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

       view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view.
    }
    
    
    
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    
    
    // Find button
    @IBAction func findMyCity(_ sender: Any) {
        // Dissmiss the keyboard
        dismissKeyboard()
        
        
        let text = cityTextFiled.text!
        
        
        if(text.capitalizedSentence == "Calgary" || text.capitalizedSentence == "Montreal" || text.capitalizedSentence == "Vancouver" || text.capitalizedSentence == "Winnipeg" || text.capitalizedSentence == "Halifax"){
            
            // Entered city found
            errorMessageTextView.layer.backgroundColor = UIColor(white: 1, alpha: 0.0).cgColor
            errorMessageTextView.text = ""
            cityImage.image = UIImage(named: text.capitalizedSentence)
            cityImage.contentMode = UIView.ContentMode.scaleAspectFill
            
        }else{
            
            // Entered city not found
            errorMessageTextView.layer.backgroundColor = UIColor(red: 168/255, green: 236/255, blue: 192/255, alpha: 1).cgColor
            if(cityTextFiled.text == ""){
                errorMessageTextView.text = "Please enter something"
            }else{
                errorMessageTextView.text = "( Calgary, Montreal, Vancouver, Winnipeg, Halifax )\nThere is no city present which named is\n" +  cityTextFiled.text!
            }
            cityImage.image = UIImage(named: "Canada")
            cityImage.contentMode = UIView.ContentMode.scaleAspectFit
        }
        
       
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


// extention for firstletter capitalize
extension String {
    var capitalizedSentence: String {
        // 1
        let firstLetter = self.prefix(1).capitalized
        // 2
        let remainingLetters = self.dropFirst().lowercased()
        // 3
        return firstLetter + remainingLetters
    }
}
