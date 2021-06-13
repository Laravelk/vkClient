//
//  LaunchCoordinator.swift
//  vkMessanger

import UIKit
import RxSwift

enum LaunchUnit {
    enum Event {
        case tabbar
        case login
    }
}

final class LaunchCoordinator: CoordinatorType {
    typealias Event = LaunchUnit.Event
    typealias Context = CommonContext
    
    private let context: Context
    private let disposeBag = DisposeBag()
    private weak var navigation: UINavigationController?
    private let event: Event
    
    // TODO: create services for login, will get tocken from db
    init(context: Context, navigation: UINavigationController?, event: Event) {
        self.context = context
        self.navigation = navigation
        self.event = event
    }
    
    func makeInitial() -> UIViewController {
        switch event {
        case .login:
            let loginCoordinator = LoginCoordinator(context: context, navigation: navigation)
            let controller = loginCoordinator.makeInitial()
            navigation?.pushViewController(controller, animated: true)
            return UIViewController()
        case .tabbar:
            return UIViewController()
        }
    }
    
}
