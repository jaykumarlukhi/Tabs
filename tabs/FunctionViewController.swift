//
//  FunctionViewController.swift


import UIKit

class FunctionViewController: UIViewController {
    
    

    // Image Parent View
    @IBOutlet var imageParentView: UIView!
    // Image View
    @IBOutlet var imageView: UIImageView!
    // Function Button View
    @IBOutlet var functionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //------ Image Parent View Design
        imageParentView.layer.cornerRadius = 5
        imageParentView.layer.shadowColor = UIColor.black.cgColor
        imageParentView.layer.shadowOffset = CGSize(width: 0, height: 0)
        imageParentView.layer.shadowOpacity = 0.2
        imageParentView.layer.shadowRadius = 15
    
        
        //------ Image View Design
        imageView.layer.cornerRadius = 5

        
        //------ Function Button Design
        functionButton.layer.cornerRadius = 5
        functionButton.layer.shadowColor = UIColor.black.cgColor
        functionButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        functionButton.layer.shadowOpacity = 0.2
        functionButton.layer.shadowRadius = 15

        // Do any additional setup after loading the view.
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
