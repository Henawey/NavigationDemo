//
//  Module2Factory.swift
//  Module2
//

import class UIKit.UIViewController
import Foundation

public typealias PostAction = () -> Void

public struct Dependancies {
    let networkManager: NetworkManager

    public init(networkManager: NetworkManager) {
        self.networkManager = networkManager
    }
}

/// Entry points
public struct EntryPoints {
    private let dependancies: Dependancies
    private let exitPoints: ExitPoints
    private let readyForNextAction: PostAction

    public init(dependancies: Dependancies,
                exitPoints: ExitPoints,
                readyForNextAction: @escaping PostAction = {}) {
        self.dependancies = dependancies
        self.exitPoints = exitPoints
        self.readyForNextAction = readyForNextAction
    }

    public func buildScreen1() -> UIViewController {
        return Screen1ViewController(exitPoints: exitPoints,
                                     dependancies: dependancies,
                                     readyForNextAction: readyForNextAction)
    }
}

/// Exit points
public protocol ExitPoints {
    func buildModule1Screen2() -> UIViewController
}
