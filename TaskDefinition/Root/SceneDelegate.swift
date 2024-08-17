//
//  SceneDelegate.swift
//  TaskDefinition
//
//  Created by Azimjon Abdurasulov on 18/08/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let tabVC = MainTabbarVC()
        let navigation = UINavigationController(rootViewController: tabVC)
        window?.rootViewController = navigation
        window?.makeKeyAndVisible()
    }


}

