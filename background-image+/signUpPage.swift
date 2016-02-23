//
//  signUpPage.swift
//  background-image+
//
//  Created by Sadir Abdulhadi on 2/7/16.
//  Copyright (c) 2016 UCL. All rights reserved.
//
import UIKit

class signUpPage: UIViewController {
    
    //text fields
    
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var snField: UITextField!
    @IBOutlet weak var genderField: UISegmentedControl!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var repassField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject!) -> Bool {
        if ( (emailField.text == "") || (emailField.text == "UCL email") || (passField.text == "") || (passField.text == "Password") || (repassField.text == "") || (repassField.text == "Retype Password") || (passField.text != repassField.text)){
                return false
        }
        else {return true}
    }
    @IBAction func backButtonTapped(sender: AnyObject) {
        performSegueWithIdentifier("lastPage", sender: nil)
    }
    
    @IBAction func registerButtonTapped(sender: AnyObject) {

        let userEmail = emailField.text
        let password = passField.text
        let repeatPassword = repassField.text
        
        
        //check for empty fields
        
        if (userEmail!.isEmpty || (userEmail == "UCL email") || password!.isEmpty || password=="Password" || repeatPassword!.isEmpty || repeatPassword=="Retype Passowrd") {
            displayAlertMessage("One of the fields is empty")
            return
        }
        
        // check passwords match
        
        else if (password != repeatPassword){
            //display alert message
            displayAlertMessage("Passwords don't match")
            return
        }
        
        else{
            performSegueWithIdentifier("nextPage", sender: nil)
            //store data
            //display alert message with confirmation
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func displayAlertMessage(messageText:String){
        let myAlert = UIAlertController(title: "Alert", message:messageText, preferredStyle: .Alert);
        let  okAction=UIAlertAction(title: "ok", style: UIAlertActionStyle.Default, handler:nil)
        myAlert.addAction(okAction)
        
        self.presentViewController(myAlert, animated: true, completion: nil)
        
    }
    
}


