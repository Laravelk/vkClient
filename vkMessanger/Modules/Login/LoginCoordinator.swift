//
//  LoginCoordinator.swift
//  vkMessanger

import UIKit

final class LoginCoordinator: CoordinatorType {
    typealias Context = CommonContext
    
    private let context: Context
    private weak var navigation: UINavigationController?
    
    init(context: Context, navigation: UINavigationController?) {
        self.context = context
        self.navigation = navigation
    }
    
    func makeInitial() -> UIViewController {
        let controller = StoryboardScene.Login.loginViewController.instantiate()
        return controller
    }
}
