//
//  AppDelegate.swift
//  TestVIPER
//
//  Created by Maxim Tischenko on 13.10.16.
//  Copyright © 2016 Maxim Tischenko. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var navigationController: UINavigationController?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        if (window == nil) {
            window = UIWindow.init(frame: UIScreen.main.bounds)
            window?.backgroundColor = UIColor.white
        }
        
        if (navigationController == nil) {
            navigationController = UINavigationController()
        }
        
        window!.rootViewController = navigationController
        window!.makeKeyAndVisible()
        
        setInitialViewController()
        
        return true
    }
    
    func setInitialViewController() {
        let router = EntitiesRouter()
        router.navigationController = self.navigationController
        router.presentInitialVC()
    }
}

