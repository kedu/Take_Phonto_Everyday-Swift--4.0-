//
//  MainVC.swift
//  Take_Phonto
//
//  Created by Apple on 2017/12/6.
//  Copyright © 2017年 lkb. All rights reserved.
//

import UIKit



class MainVC: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
  
    var tableView : UITableView?
    
    let cellReuse = "cellReuse"
    
    
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Config()
        
        CreatUI()
        
        Layout()
        
        
        
        
        
        
        
    }
    
    
    func Config() -> Void {
        
        
        
        
    }

    
    func CreatUI() -> Void {
        

        self.tableView = UITableView()
        
        tableView?.register(UINib(nibName: "MainCell", bundle: nil), forCellReuseIdentifier: cellReuse)
        
        tableView?.rowHeight = UITableViewAutomaticDimension
        tableView?.estimatedRowHeight = 40
        tableView?.delegate = self
        tableView?.dataSource = self
        
        
        
        self.view.addSubview(tableView!)
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    func Layout() -> Void {
        
        
        
        
        
        
    }
    
    
    
    
    
    
    



}
