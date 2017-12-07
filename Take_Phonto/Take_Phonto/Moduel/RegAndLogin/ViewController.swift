//
//  ViewController.swift
//  Take_Phonto
//
//  Created by luozhuang on 2017/12/4.
//  Copyright © 2017年 lkb. All rights reserved.
//

import UIKit

import Alamofire



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
        
        let handler : SMSGetCodeResultHandler! = { (error : Error?) in
            
            if error != nil {//可选项也算有值的
            
                print("发送成功")
            
            }
            //            if error ==  nil {
//                print("发送成功")
//            }
//            
//            guard let error = error else {
//                print("发送成功")
//                return
//            }
//            
//            if let error = error {
//                
//                 print("发送成功")
//            }
//            
            
//            if let
//            func doSomething(str: String?)
//            {
//                let v: String! = str //拿不可选项去取可选项的值,如果无值,直接就为空了
//                if v != nil
//                {
//                    // use v to do something
//                }
//            }
            
//            func doSomething(str: String?)
//            {
//                if let v = str
//                {
//                    // use v to do something
//                }
//            }
//            
//            func doSomething(str: String?)
//            {
//                let v: String! = str
//                if v == nil
//                {
//                    return
//                }
//                
//                // use v to do something
//            }
//            这样做可以避免过多的嵌套。上面代码实在太常见了，swift也提供一个guard这个语法糖，用guard可以改写成：func doSomething(str: String?)
//            {
//                guard let v = str else { return }
//                
//                // use v to do something
//            }
            
         
            
        }
        
        SMSSDK.getVerificationCode(by: SMSGetCodeMethodSMS, phoneNumber: phoneNumTextfield.text!, zone: "86", result: handler)
        
        
        
        
        


//        [SMSSDK getVerificationCodeByMethod:SMSGetCodeMethodSMS phoneNumber:@"13800138000" zone:@"86" result:^(NSError *error) {
//            
//            if (!error)
//            {
//            // 请求成功
//            }
//            else
//            {
//            // error
//            }
//            }];
//        
//        [SMSSDK commitVerificationCode:@"1234" phoneNumber:@"13800138000" zone:@"86" result:^(NSError *error) {
//            
//            if (!error)
//            {
//            // 验证成功
//            }
//            else
//            {
//            // error
//            }
//            }];
//        
        
        
    }
    
    
    @IBAction func registerAction(_ sender: Any) {
        
        
        self.navigationController?.pushViewController(LoginVC(), animated: true)
        
        let handler : SMSGetCodeResultHandler! = { (error : Error?) in
            if error ==  nil {
                print("验证成功")
            }
            
            //            guard let error = error else {
            //                print("发送成功")
            //                return
            //            }
            //
            //            if let error = error {
            //
            //                 print("发送成功")
            //            }
            //            
            
            
            
            
        }

        //判断手机号码是否正确
        SMSSDK.commitVerificationCode(codeTextfield.text!, phoneNumber: phoneNumTextfield.text!, zone: "86",result: handler)
        
        
        
        
        
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

