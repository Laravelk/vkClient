//
//  EventType.swift
//  vkMessanger
//
//  Created by Иван Морозов on 13.06.2021.
//

import Foundation

protocol UnitType {
    associatedtype Input
    associatedtype Output
    associatedtype Event
}

enum DefaultUnit<I, O, E>: UnitType {
    typealias Input = I
    typealias Output = O
    typealias Event = E
}
