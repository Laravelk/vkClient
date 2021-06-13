//
//  RegisterCoordinator.swift
//  vkMessanger

import UIKit

final class RegisterCoordinator: CoordinatorType {
    typealias Context = CommonContext
    
    private let context: Context
    private let navigation: UINavigationController?
    
    init(context: CommonContext, navigation: UINavigationController?) {
        self.context = context
        self.navigation = navigation
    }
    
    func makeInitial() -> UIViewController {
        let controller = StoryboardScene.Register.registerViewController.instantiate()
        let viewModel = RegisterViewModel()
        controller.viewModel = viewModel
        return controller
    }
}
