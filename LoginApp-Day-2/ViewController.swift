//
//  ViewController.swift
//  LoginApp-Day-2
//
//  Created by Shwe Yi Tun on 10/21/18.
//  Copyright © 2018 Shwe Yee Tun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    @IBOutlet weak var btnLogin: UIButton!
    
    @IBOutlet weak var btnRegister: UIButton!
    
    @IBOutlet weak var lblForgetPassword: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btnLogin.addTarget(self, action: #selector(onClickLogin), for: .touchUpInside)
        btnRegister.addTarget(self, action: #selector(onClickRegister), for: .touchUpInside)
    }
    
    @objc func onClickRegister(){
        let navigationController = self.storyboard?.instantiateViewController(withIdentifier: "RegisterViewController") as! UINavigationController
        //et vc = navigationController.viewControllers[0] as! RegisterViewController
        self.present(navigationController, animated: true, completion: nil)
    }

    @objc func onClickLogin(){
        let username = tfUsername.text!
        let password = tfPassword.text!
        
        print("\(username) and \(password)")
        
        if username.elementsEqual("admin") && password.elementsEqual("123"){
            //performSegue(withIdentifier: Constants.SegueId.LOGIN_SEGUE, sender: username)
            let navigationController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! UINavigationController
            let vc = navigationController.viewControllers[0] as! SecondViewController
            vc.username = username
            self.present(navigationController, animated: true, completion: nil)
        } else {
            
        }
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == Constants.SegueId.LOGIN_SEGUE {
//            let vc = segue.destination as! SecondViewController
//            vc.username = sender as? String
//        }
//    }

}

