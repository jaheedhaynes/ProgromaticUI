//
//  SceneDelegate.swift
//  ProgromaticUI
//
//  Created by Jaheed Haynes on 1/28/20.
//  Copyright © 2020 Jaheed Haynes. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    //***********************************************************************************************
    // MARK: iOS 13 now has a scene Delegate.
    // This is where the window property is in order to set up your programmatic UI code
    // You must set the root controller property of the window (ex window.rootViewController = ViewController()
    
    //-------------------------------------------------------------------------
    // MARK: Steps in removing default Main.storyboard file from the info.plist
    // 1. delete the 'Main storyboard' entry from the info.plist
    // 2. delete the storyboard value from the "Scene Configuration"
    // 3. delete the Main.storyboard file (optional)
    

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        
        //***********************************************************************************************
        // MARK: Steps in configuring progromatic UI in the SceneDelegate
        // MARK: Steps  in configuring the window property
        

        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        //------------------------------------------------------------------------
        // MARK: setup the window's frame to be the size of the entire device
        // MARK: instantiating the window with a frame
//----------------------------------------------------------------
        // MARK: TAB Vontroller Attrempt
//        let tab = UITabBarController()
//        let cOne = ViewController()
//        let cTwo = SettingsViewController()
//        let array = [cOne,cTwo]
// ----------------------------------------------------------------
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.windowScene = windowScene
//        window?.rootViewController = SettingsViewController()
        
        // embedding a UIViewController in a UINavigationController
        window?.rootViewController = UINavigationController(rootViewController: MainViewController())
        window?.makeKeyAndVisible() // this makes it visible on screen
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

