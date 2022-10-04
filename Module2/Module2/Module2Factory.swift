//
//  Module2Factory.swift
//  Module2
//

import class UIKit.UIViewController
import Foundation

/// Entry points
public struct EntryPoints {
    private let dependancies: Dependancies
    private let exitPoints: ExitPoints

    public init(dependancies: Dependancies,
                exitPoints: ExitPoints) {
        self.dependancies = dependancies
        self.exitPoints = exitPoints
    }

    public func buildScreen1(readyForNextAction: @escaping PostAction = {}) -> UIViewController {
        return Screen1ViewController(exitPoints: exitPoints,
                                     dependancies: dependancies,
                                     readyForNextAction: readyForNextAction)
    }
}

/// Exit points
public protocol ExitPoints {
    func buildModule1Screen2() -> UIViewController
}
