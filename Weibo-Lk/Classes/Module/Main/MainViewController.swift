//
//  MainViewController.swift
//  Weibo-Lk
//
//  Created by liuke on 15/12/12.
//  Copyright © 2015年 liuke. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

 override func viewDidLoad() {
        super.viewDidLoad()
//添加子视图控制器
       addChildViewControllers()

}
    private func addChildViewControllers() {
        addChildViewController(HomeTableViewController(), title: "首页", Imagename : "tabbar_home")
        addChildViewController(MassageTableViewController(), title: "消息", Imagename :
        "tabbar_message_center")
        
        addChildViewController(DiscoverTableViewController(), title:"发现", Imagename :
        "tabbar_discover")
        
        addChildViewController(ProfileTableViewController(), title:"我", Imagename:"tabbar_profile")
        
        
    }
    
    private func addChildViewController(vc: UIViewController, title: String, Imagename : String) {
//        设置主题色为orange
        self.tabBar.tintColor = UIColor.orangeColor()
        
       // let homeVC = HomeTableViewController()
       let nav = UINavigationController(rootViewController: vc)
        //  nav.title = "首页"
        vc.title = title
        //homeVC.title = "首页"
//        设置图片
       vc.tabBarItem.image = UIImage(named: Imagename)
        
////        修改系统渲染模式为AlwaysOriginal 永远使用原始图片 拼接字符串
//        vc.tabBarItem.selectedImage = UIImage(named: Imagename + "_highlighted")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
//        
////        设置标题颜色
//        vc.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.orangeColor()], forState: .Selected )
        
        addChildViewController(nav)
    }
  
}