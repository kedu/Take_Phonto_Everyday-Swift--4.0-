//
//  ViewController.swift
//  Take_Phonto
//
//  Created by luozhuang on 2017/12/4.
//  Copyright © 2017年 lkb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var userNameTextfield: UITextField!
    
    @IBOutlet weak var phoneNumLabel: UILabel!
    
    
    @IBOutlet weak var phoneNumTextfield: UITextField!
    
    @IBOutlet weak var getCodeBtn: UIButton!
    
    @IBOutlet weak var codeLabel: UILabel!
    
    @IBOutlet weak var codeTextfield: UITextField!
    
    
    @IBOutlet weak var pwdLabel: UILabel!
    
    @IBOutlet weak var pwdTextfield: UITextField!
    
    
    @IBOutlet weak var confimLabel: UILabel!
    
    
    
    @IBOutlet weak var confimTextfield: UITextField!
    
    
    @IBOutlet weak var registerBtn: UIButton!
    

    @IBAction func getCodeAction(_ sender: Any) {
    }
    
    
    @IBAction func registerAction(_ sender: Any) {
        
        
        self.navigationController?.pushViewController(LoginVC(), animated: true)
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

