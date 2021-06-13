//
//  RegisterViewController.swift
//  vkMessanger

import UIKit

final class RegisterViewController: UIViewController {
    var viewModel: RegisterViewModel? { didSet { bindViewModel() } }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension RegisterViewController: ViewModelBindable {
    func bind(viewModel: RegisterViewModel) {}
}
