//
//  Screen2ViewController.swift
//  Module1
//

import UIKit

final class Screen2ViewController: UIViewController {
    private lazy var mainView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()

    override func loadView() {
        view = mainView
    }
}

