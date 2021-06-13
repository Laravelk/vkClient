//
//  ViewControllerType.swift
//  vkMessanger
//
//  Created by Иван Морозов on 13.06.2021.
//

import Foundation

protocol ViewModelBindable {
    associatedtype ViewModel
    var viewModel: ViewModel? { get }
    
    func bind(viewModel: ViewModel)
}

extension ViewModelBindable {
    func bindViewModel() {
        if let viewModel = viewModel {
            bind(viewModel: viewModel)
        }
    }
}
