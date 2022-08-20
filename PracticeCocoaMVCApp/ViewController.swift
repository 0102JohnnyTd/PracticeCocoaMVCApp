//
//  ViewController.swift
//  PracticeCocoaMVCApp
//
//  Created by Johnny Toda on 2022/08/15.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private weak var countLabel: UILabel!

    @IBAction private func didTapPlusButton(_ sender: Any) {
        counter.increment()
    }

    @IBAction private func didTapMinusButton(_ sender: Any) {
    }

    private let counter = Counter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter.delegate = self
    }

    private func updateCountLabel() {
        countLabel.text = String(counter.count)
    }
}

extension ViewController: CounterDelegate {
    func didChangeCount() {
        updateCountLabel()
    }
}

