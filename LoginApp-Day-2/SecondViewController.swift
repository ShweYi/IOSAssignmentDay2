//
//  SecondViewController.swift
//  LoginApp-Day-2
//
//  Created by Shwe Yi Tun on 10/21/18.
//  Copyright © 2018 Shwe Yee Tun. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var lblUsername: UILabel!
    
    @IBAction func back(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    var username : String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblUsername.text = username
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
