//
//  Module1Factory.swift
//  Module1
//

import class UIKit.UIViewController

public struct Dependancies {
    public init() {}
}

/// Entry points
public struct EntryPoints {
    private let dependancies: Dependancies
    private let exitPoints: ExitPoints

    public init(dependancies: Dependancies,
                exitPoints: ExitPoints) {
        self.dependancies = dependancies
        self.exitPoints = exitPoints
    }

    public func buildScreen1() -> UIViewController {
        return Screen1ViewController(exitPoints: exitPoints)
    }

    public func buildScreen2() -> UIViewController {
        return Screen2ViewController()
    }
}

/// Exit points
public protocol ExitPoints {
    func buildModule2Screen1() -> UIViewController
    func buildModule1Screen2() -> UIViewController
}
