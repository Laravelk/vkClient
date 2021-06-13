//
//  RegisterViewController.swift
//  vkMessanger
//
//  Created by Иван Морозов on 13.06.2021.
//

import UIKit

final class RegisterViewController: UIViewController {
    var viewModel: RegisterViewModel? { didSet { bindViewModel() } }
}

extension RegisterViewController: ViewModelBindable {
    func bind(viewModel: RegisterViewModel) {}
}
