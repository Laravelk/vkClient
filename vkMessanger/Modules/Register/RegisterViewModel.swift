//
//  RegisterViewModel.swift
//  vkMessanger
//
//  Created by Иван Морозов on 13.06.2021.
//

import Foundation

enum RegisterUnit: UnitType {
    struct Input {}
    struct Output {}
    enum Event {}
}

final class RegisterViewModel: ViewModelType {
    typealias Input = RegisterUnit.Input
    typealias Output = RegisterUnit.Output
    typealias Unit = RegisterUnit
    
    func transform(input: RegisterUnit.Input) -> RegisterUnit.Output {
        return Output()
    }
}
