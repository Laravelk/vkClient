//
//  RegisterCoordinator.swift
//  vkMessanger
//
//  Created by Иван Морозов on 13.06.2021.
//

import UIKit

final class RegisterCoordinator: CoordinatorType {
    typealias Context = CommonContext
    
    private let context: Context
    
    init(context: CommonContext) {
        self.context = context
    }
    
    func makeInitial() -> UIViewController {
        return UIViewController()
    }
}
