//
//  ViewController.swift
//  Join
//
//  Created by Singdi,Muhammad on 5/19/17.
//  Copyright © 2017 Singdi,Muhammad. All rights reserved.
//

import UIKit
import JVFloatLabeledTextField
import Firebase
import FirebaseAuth

class loginsignupVC: UIViewController {
    @IBOutlet weak var nametf: JVFloatLabeledTextField!
    
    @IBOutlet weak var passtf: JVFloatLabeledTextField!
    
    @IBOutlet weak var login: UIButton!
    
    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBAction func press_login(_ sender: Any) {
        if nametf.text != "" && passtf.text != ""{
            if segment.selectedSegmentIndex == 0{
                Auth.auth().signIn(withEmail: nametf.text!, password: passtf.text!, completion: { (user, error) in
                    if user != nil{
                    }
                    else{
                        if let e = error?.localizedDescription{
                            print(e)
                        }
                        else{
                            print("ERROR")
                        }
                    }
                })
            }
            else{
                Auth.auth().createUser(withEmail: nametf.text!, password: passtf.text!, completion: { (user, error) in
                    if user != nil{}
                    else{
                        if let e = error?.localizedDescription{
                            print(e)
                        }
                        else{
                            print("ERROR")
                        }
                    }
                })
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nametf.setPlaceholder("Email Address", floatingTitle: "Email Address")
        passtf.setPlaceholder("Password", floatingTitle: "Password")
        nametf.floatingLabelTextColor = UIColor.blue
        nametf.floatingLabelActiveTextColor = UIColor.blue
        passtf.floatingLabelTextColor = UIColor.blue
        passtf.floatingLabelActiveTextColor = UIColor.blue
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

