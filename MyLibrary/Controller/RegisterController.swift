//
//  RegisterController.swift
//  MyLibrary
//
//  Created by Ningqian Jia on 10/28/18.
//  Copyright © 2018 RickyJia. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD
class RegisterController: UIViewController {
    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    
    
    
    
    @IBAction func registerBtmPressed(_ sender: Any) {
        SVProgressHUD.show()
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            
            if error != nil
            {
                print(error!)
            }else{
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "goToHome", sender: self)
                
            }
            
            
        }
        
        
        
    
    }
    
}
