//
//  SceneDelegate.swift
//  vkMessanger
//
//  Created by Иван Морозов on 13.06.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(frame: scene.coordinateSpace.bounds)
        window.windowScene = scene
        self.window = window
        let navigation = UINavigationController()
        window.rootViewController = navigation
        
        let launch = LaunchCoordinator(
            context: LaunchCoordinator.Context(),
            navigation: navigation,
            event: .login
        )
        _ = launch.makeInitial()
        window.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) {}
}

