//
//  LoginVC.swift
//  Assignment_iOS
//
//  Created by AnnAsFA on 8/19/18.
//  Copyright © 2018 Assignment‏. All rights reserved.
//

import UIKit
import SVProgressHUD
import FirebaseAuth
class LoginVC: BaseViewController {
    
    @IBOutlet weak var LoginBtn: UIButton!
    @IBOutlet weak var PasswordTxtField: UITextField!
    @IBOutlet weak var UserNameTxtField: UITextField!
    @IBOutlet weak var BluerEffectView: UIVisualEffectView!
    @IBOutlet weak var ContainerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
          self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view.
        SetUp()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func SetUp(){
        
        LoginBtn.layer.cornerRadius = 5.0
        BluerEffectView.layer.cornerRadius = 5.0
        ContainerView.layer.cornerRadius = 5.0
        
        LoginBtn.layer.masksToBounds = true
        BluerEffectView.layer.masksToBounds = true
        ContainerView.layer.masksToBounds = true
        
        LoginBtn.addTarget(self, action: #selector(ButtonLoginPressed), for: .touchUpInside)
        
        
    }
    
    
    @objc func ButtonLoginPressed(){

        
        if self.UserNameTxtField.text == "" || self.PasswordTxtField.text == "" {
            
            //Alert to tell the user that there was an error because they didn't fill anything in the textfields because they didn't fill anything in
            
            let alertController = UIAlertController(title: "Error", message: "Please enter an email and password.", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            self.present(alertController, animated: true, completion: nil)
            
        } else {
            
            Auth.auth().signIn(withEmail: self.UserNameTxtField.text!, password: self.PasswordTxtField.text!) { (user, error) in
                
                if error == nil {
                    
                    //Print into the console if successfully logged in
                    print("You have successfully logged in")
                    
                    //Go to the HomeViewController if the login is sucessful
                    let vc = self.storyboard!.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
                    
                    self.navigationController?.pushViewController(vc, animated: true)
                    
                } else {
                    
                    //Tells the user that there is an error and then gets firebase to tell them the error
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
    
}
