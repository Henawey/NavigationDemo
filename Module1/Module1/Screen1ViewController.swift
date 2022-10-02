//
//  Screen1ViewController.swift
//  Module1
//

import UIKit

final class Screen1ViewController: UIViewController {
    private let exitPoints: ExitPoints

    private lazy var mainView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()

    private lazy var button: UIButton = {
        let action = UIAction() { action in
            let newScreen = self.exitPoints.buildModule2Screen1()
            self.show(newScreen, sender: action.sender)
        }

        let button = UIButton(type:.system, primaryAction: action)
        button.setTitle("Ya Rab", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func loadView() {
        view = mainView

        mainView.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: mainView.centerYAnchor)
        ])
    }

    public init(exitPoints: ExitPoints) {
        self.exitPoints = exitPoints
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
