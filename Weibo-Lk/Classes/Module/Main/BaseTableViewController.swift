//
//  BaseTableViewController.swift
//  Weibo-Lk
//
//  Created by liuke on 15/12/12.
//  Copyright © 2015年 liuke. All rights reserved.
//

import UIKit

class BaseTableViewController: UITableViewController {
//    设置用户是否登录的标记
    var userLogin = false
    override func loadView() {
        if userLogin {
        super.loadView()
        }else{
                }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
}
