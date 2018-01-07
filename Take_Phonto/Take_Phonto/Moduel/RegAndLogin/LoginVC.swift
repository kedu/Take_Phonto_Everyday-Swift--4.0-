//
//  LoginVC.swift
//  Take_Phonto
//
//  Created by luozhuang on 2017/12/4.
//  Copyright © 2017年 lkb. All rights reserved.
//

import UIKit
import Alamofire

class LoginVC: UIViewController {
    
    
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    
    @IBOutlet var userNameTextfield: [UITextField]!
    
    
    @IBOutlet weak var pwdLabel: UILabel!
    
    
    @IBOutlet weak var pwdTextfield: UITextField!
    
    
    
    @IBOutlet weak var loginBtn: UIButton!
    
    
    
    @IBAction func loginAction(_ sender: Any) {
        
        print("我要登录了")
        
        //判断值是否合法
        if (userNameTextfield.first?.text?.characters.count)! <= 0 || (pwdTextfield?.text?.characters.count)! <= 0 {
        
            
            
            print("输入不合法,请检查")
            
            return;
            
        }
        

        let parameters: Parameters = [
            "username": userNameTextfield.first?.text! ?? 0,
            "pwd": pwdTextfield.text!,
            
            ]
        
        
        print(parameters)
        
        
        let urlStr = BaseUrl.appending(loginApi)
        
        
        request(urlStr , method: .post , parameters: parameters).responseJSON{ (response) in
            
            
            
            print("\(String(describing: response.data!))")
            
            
            
            let json: [String: Any] = try! JSONSerialization.jsonObject(with: response.data!, options: .mutableContainers) as! [String : Any]
            
            //可选值获取指定属性
            
            
            print(json)
            
            //保存下来token,uid. 还需要一个第三方弹框.字典转模型.
            
            
            
            
            if json["code"] as? String == "200" {
                
                let appDelegte  = UIApplication.shared.delegate
                
                
                appDelegte?.window??.rootViewController = UINavigationController.init(rootViewController: MainVC())
                
                
            }else {
                
                print("失败")
                
                
                
            }
            
            
            
            
            
            
            
            
        }

        
        
        

        
        
        

        
        
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
