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
  
            
         
            
        }
        
        SMSSDK.getVerificationCode(by: SMSGetCodeMethodSMS, phoneNumber: phoneNumTextfield.text!, zone: "86", result: handler)
        
        
 
        
        
        
    }
    
    
    @IBAction func registerAction(_ sender: Any) {
        
        //判断值是否合法
        if (userNameTextfield.text?.characters.count)! <= 0 || (phoneNumTextfield.text?.characters.count)! <= 0 || (pwdTextfield.text?.characters.count)! <= 0 || (pwdTextfield.text != confimTextfield.text)  {
            
            
            print("输入不合法,请检查")
            
            return;
            
        }
        
        let parameters: Parameters = [
            "username": userNameTextfield.text ?? 0,
            "pwd": pwdTextfield.text!,
            "phone": phoneNumTextfield.text!,
        ]
 
        
        print(parameters)
        
        
        let urlStr = BaseUrl.appending(regApi)
        
        
        request(urlStr , method: .post , parameters: parameters).responseJSON{ (response) in
            

        
            print("\(String(describing: response.data!))")
            

            
            let json: [String: Any] = try! JSONSerialization.jsonObject(with: response.data!, options: .mutableContainers) as! [String : Any]
            
            //可选值获取指定属性


            print(json)
            
            if json["code"] as? String == "200" {
            
             self.navigationController?.pushViewController(LoginVC(), animated: true)
                
            
            }else {
                
                print("失败")
            
            
            
            }
            
        
            
                
            
            
       
            
        }
        
        
    
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
      
        
        
        return;
        
        let handler : SMSGetCodeResultHandler! = { (error : Error?) in
            if error ==  nil {
                print("验证成功")
            }
            
            
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

