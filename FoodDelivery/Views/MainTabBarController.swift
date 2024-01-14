//
//  MainTabBarController.swift
//  nazvanie
//
//  Created by Sergey Savinkov on 14.04.2023.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Москва"
        
        setupTabBar()
        setupItems()
    }
    
    private func setupTabBar() {
        tabBar.backgroundColor = .white
        tabBar.tintColor = .red
        tabBar.unselectedItemTintColor = .gray
        tabBar.layer.borderColor = UIColor.gray.cgColor
        tabBar.layer.borderWidth = 0.6
    }
    
    private func setupItems() {
        let menuVC = ViewController()
        let contactVC = ViewController()
        let profileVC = ViewController()
        let basketVC = ViewController()
        
        setViewControllers([menuVC, contactVC, profileVC, basketVC],
                           animated: true)
        
        guard let items = tabBar.items else { return }
        
        items[0].title = "Меню"
        items[1].title = "Контакты"
        items[2].title = "Профиль"
        items[3].title = "Корзина"
        
        items[0].image = UIImage(systemName: "square.and.arrow.up.circle")
        items[1].image = UIImage(systemName: "square.and.arrow.up.circle")
        items[2].image = UIImage(systemName: "person.crop.circle.fill")
        items[3].image = UIImage(systemName: "basket.fill")
        
        UITabBarItem.appearance().setTitleTextAttributes([.font: UIFont.boldSystemFont(ofSize: 14)], for: .normal)
    }
}
