//
//  LoginVC.swift
//  Take_Phonto
//
//  Created by luozhuang on 2017/12/4.
//  Copyright © 2017年 lkb. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    
    @IBOutlet var userNameTextfield: [UITextField]!
    
    
    @IBOutlet weak var pwdLabel: UILabel!
    
    
    @IBOutlet weak var pwdTextfield: UITextField!
    
    
    
    @IBOutlet weak var loginBtn: UIButton!
    
    
    
    @IBAction func loginAction(_ sender: Any) {
        
        print("我要登录了")
        
        
        //
        
        
        
        UIApplication.shared.keyWindow?.rootViewController = UINavigationController.init(rootViewController: MainVC())
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
