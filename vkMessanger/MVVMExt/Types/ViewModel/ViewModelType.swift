//
//  ViewModelType.swift
//  vkMessanger
//
//  Created by Иван Морозов on 13.06.2021.
//

import Foundation

protocol ViewModelType {
    associatedtype Unit: UnitType = DefaultUnit<Input, Output, Never> where Unit.Input == Input,
    Unit.Output == Output
    associatedtype Input
    associatedtype Output
    
    func transform(input: Unit.Input) -> Output
}

final class ViewModel<Input, Output>: ViewModelType {
    private let _transform: (Input) -> Output
    init<DefaultViewModel>(viewModel: DefaultViewModel) where DefaultViewModel: ViewModelType, DefaultViewModel.Input == Input, DefaultViewModel.Output == Output {
        self._transform = viewModel.transform(input:)
    }
    
    func transform(input: Input) -> Output {
        return _transform(input)
    }
}
