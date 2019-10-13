//
//  AppDelegate.swift
//  PhotoViewer
//
//  Created by Oleg Taranenko on 12/10/2019.
//  Copyright © 2019 Oleg Taranenko. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

 var window: UIWindow?
	
	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		let customWindows = UIWindow(frame: UIScreen.main.bounds)
		let mainViewController = MainViewController()
		customWindows.rootViewController = mainViewController
		self.window = customWindows
		customWindows.makeKeyAndVisible()
		return true
	}
}

