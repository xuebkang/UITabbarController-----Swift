//
//  MainViewController.swift
//  TabbarController--Swift
//
//  Created by kevin on 2022/7/13.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initTabBar()
    }
    //初始化tabbar
    func initTabBar() {
        let home = UINavigationController(rootViewController: HomeViewController())
        home.tabBarItem.title = "首页"
        home.tabBarItem.image = UIImage(named: "home_normal")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal) //必须加渲染模式才能展示出原图
        home.tabBarItem.selectedImage = UIImage(named: "home_select")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        
        let category = UINavigationController(rootViewController: CategoryViewController())
        category.tabBarItem.title = "分类"
        category.tabBarItem.image = UIImage(named: "category_normal")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        category.tabBarItem.selectedImage = UIImage(named: "category_select")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        
        let shopCart = UINavigationController(rootViewController: ShopCartViewController())
        shopCart.tabBarItem.title = "购物车"
        shopCart.tabBarItem.image = UIImage(named: "bag_normal")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        shopCart.tabBarItem.selectedImage = UIImage(named: "bag_select")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)

        let me = UINavigationController(rootViewController: MeViewController())
        me.tabBarItem.title = "我的"
        me.tabBarItem.image = UIImage(named: "me_normal")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        me.tabBarItem.selectedImage = UIImage(named: "me_select")?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        
        viewControllers = [home, category, shopCart, me]
        
        setTabBarItemAttributes(fontName: "Courier", fontSize: 14, normalColor: .gray, selectedColor: .black, bgColor: .white)
    }
    
    // 设置 tabBar & tabBarItem
    func setTabBarItemAttributes(fontName: String = "Courier",
                                 fontSize: CGFloat = 14,
                                 normalColor: UIColor = .gray,
                                 selectedColor: UIColor = .black,
                                 bgColor: UIColor = .white) {
        //tabbarItem文字大小
        var attributes: [NSAttributedString.Key: Any] = [.font: UIFont(name: fontName, size: fontSize)!]
        // tabBarItem 文字默认颜色
        attributes[.foregroundColor] = normalColor
        UITabBarItem.appearance().setTitleTextAttributes(attributes, for: .normal)
        // tabBarItem 文字选中颜色
        attributes[.foregroundColor] = selectedColor
        UITabBarItem.appearance().setTitleTextAttributes(attributes, for: .selected)
        // tabBar 文字、图片 统一选中高亮色
        tabBar.tintColor = selectedColor
        
        // tabBar 背景色
        tabBar.backgroundColor = bgColor
        
    }

    
}
