//
//  ProfileViewController.swift


import UIKit

class ProfileViewController: UIViewController {
    
    var counter = 0

    // Name Lable View
    @IBOutlet var nameLabelView: UILabel!
    
    // Profile picture parent View
    @IBOutlet var profileImageParentView: UIView!
    
    // Profile picture Image View
    @IBOutlet var profilePictureImageView: UIImageView!
    
    // Hobbie picture parent View
    @IBOutlet var hobbieParentView: UIView!
    
    // next Button View
    @IBOutlet var nextButton: UIButton!
    
    // previous Button View
    @IBOutlet var previousButton: UIButton!
    
    // Hobbie picture Image View
    @IBOutlet var hobbieImage: UIImageView!
    
    // hobbie TextView
    @IBOutlet var hobbieTextView: UITextView!
    
    // myself TextView
    @IBOutlet var mySelfTextView: UITextView!
    
    // my lab activity Button View
    @IBOutlet var myLabActivityButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //------ Name Lable View
        nameLabelView.layer.borderWidth = 0.5
        nameLabelView.layer.borderColor = UIColor.white.cgColor
        nameLabelView.layer.cornerRadius = 10
        
        
        //------ Profile Image Parent View
        profileImageParentView.layer.cornerRadius = 10
        profileImageParentView.layer.shadowRadius = 10.0
        profileImageParentView.layer.shadowColor = UIColor(red: 84/255, green: 2/255, blue: 255/255, alpha: 1).cgColor
        profileImageParentView.layer.shadowOffset = CGSize(width: 0, height: 0)
        profileImageParentView.layer.shadowOpacity = 0.7
        
        //------ Profile Image View
        profilePictureImageView.layer.cornerRadius = 10
        
        
        //------ Myself Text view
        mySelfTextView.layer.borderWidth = 0.5
        mySelfTextView.layer.borderColor = UIColor.white.cgColor
        mySelfTextView.layer.cornerRadius = 10

        
        //------ Next Button View
        nextButton.layer.borderWidth = 0.5
        nextButton.layer.cornerRadius = 17.5
        nextButton.layer.backgroundColor = mySelfTextView.layer.backgroundColor
        nextButton.layer.borderColor = UIColor.white.cgColor
        
        
        //------ Previous Button View
        previousButton.layer.borderWidth = 0.5
        previousButton.layer.cornerRadius = 17.5
        previousButton.layer.backgroundColor = mySelfTextView.layer.backgroundColor
        previousButton.layer.borderColor = UIColor.white.cgColor
        
        //------ Hobbie Image Parent View
        hobbieParentView.layer.cornerRadius = 10
        hobbieParentView.layer.shadowRadius = 10.0
        hobbieParentView.layer.shadowColor = UIColor(red: 84/255, green: 2/255, blue: 255/255, alpha: 1).cgColor
        hobbieParentView.layer.shadowOffset = CGSize(width: 0, height: 0)
        hobbieParentView.layer.shadowOpacity = 0.7
        
        
        //------ Hobbie Image View
        hobbieImage.image = UIImage(named: "traveling")
        hobbieImage.layer.cornerRadius = 10
        
        
        //------ Hobbie Text View
        hobbieTextView.text = "I enjoy traveling to different places, especially green locations. I also enjoy interacting with new people."
        hobbieTextView.layer.borderWidth = 0.5
        hobbieTextView.layer.borderColor = UIColor.white.cgColor
        hobbieTextView.layer.cornerRadius = 10
        

        //------ My Lab Activity Button View
        myLabActivityButton.layer.cornerRadius = 10
        
        
    }
    
    
    // This Function can jump on next hobbie
    @IBAction func nextHobbie(_ sender: Any) {
        counter = counter + 1
        if(counter > 2){
            // jump to first Hobbie
            counter = 0
            
        }
        if(counter == 0){
            hobbieImage.image = UIImage(named: "traveling")
            hobbieTextView.text = "I enjoy traveling to different places, especially green locations. I also enjoy interacting with new people."
            
        }else if(counter == 1){
            hobbieImage.image = UIImage(named: "cricket")
            hobbieTextView.text = "I am good at badminton, but I like cricket sports. Rohit Sharma is my favorite cricket player."
        }else{
            hobbieImage.image = UIImage(named: "coding")
            hobbieTextView.text = "I work in the IT field since I enjoy to do coding. I wrote my first Hello world program in the year of 2021"
        }
        
    }
    
    
    // This Function can jump to previous hobbie
    @IBAction func previousHobbie(_ sender: Any) {
        counter = counter - 1
        if(counter < 0){
            // jump to last Hobbie
            counter = 2
        }
        if(counter == 0){
            hobbieImage.image = UIImage(named: "traveling")
            hobbieTextView.text = "I enjoy traveling to different places, especially green locations. I also enjoy interacting with new people."
        }else if(counter == 1){
            hobbieImage.image = UIImage(named: "cricket")
            hobbieTextView.text = "I am good at badminton, but I like cricket sports. Rohit Sharma is my favorite cricket player."
        }else{
            hobbieImage.image = UIImage(named: "coding")
            hobbieTextView.text = "I work in the IT field since I enjoy to do coding. I wrote my first Hello world program in the year of 2021"
        }
        
        
    }
}


