//
//  Screen1ViewController.swift
//  NavigationApp
//

import UIKit

final class Screen1ViewController: UIViewController {
    private let exitPoints: ExitPoints
    private let dependancies: Dependancies
    private let readyForNextAction: PostAction
    
    private lazy var mainView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()

    private lazy var button: UIButton = {
        let action = UIAction() { action in
            let newScreen = self.exitPoints.buildModule1Screen2()
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

    public init(exitPoints: ExitPoints,
                dependancies: Dependancies,
                readyForNextAction: @escaping PostAction) {
        self.exitPoints = exitPoints
        self.dependancies = dependancies
        self.readyForNextAction = readyForNextAction
        super.init(nibName: nil, bundle: nil)

        self.dependancies.networkManager.fetchData { [weak self] _ in
            self?.readyForNextAction()
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
