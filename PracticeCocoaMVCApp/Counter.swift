//
//  Counter.swift
//  PracticeCocoaMVCApp
//
//  Created by Johnny Toda on 2022/08/15.
//

import Foundation

protocol CounterDelegate: AnyObject {
    func didChangeCount()
}

final class Counter {
    weak var delegate: CounterDelegate?

    private(set) var count = 0

    func increment() {
        count += 1
        notify()
    }

    func decrement() {
        count -= 1
        notify()
    }

    private func notify() {
        delegate?.didChangeCount()
    }
}
