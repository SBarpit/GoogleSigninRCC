//
//  AppDelegate.swift
//  GoogleLogin
//
//  Created by Appinventiv on 22/08/17.
//  Copyright © 2017 Appinventiv. All rights reserved.
//

import UIKit

let kClientID = "885903390036-m2nqq6cvsk8n0b18a10v140fblar6mc9.apps.googleusercontent.com"

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate{

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //MARK: Google login related...
        GoogleLoginController.shared.configure(withClientId: kClientID)
        return true
    }

    @available(iOS 9.0, *)
    func application(_ application: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any]) -> Bool {
        
        return GoogleLoginController.shared.handleUrl(url, options: options)
    }
}
