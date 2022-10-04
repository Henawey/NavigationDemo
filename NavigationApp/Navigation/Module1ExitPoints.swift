//
//  Module1ExitPoints.swift
//  NavigationApp
//

import UIKit
import Module1
import Module2

/// 1. Make sure dependancies are available.
/// 2. Make sure input data are available.
/// 3. Make sure Exit points area available.
/// Return ViewController
struct Module1ExitPoints: Module1.ExitPoints {
    func buildModule2Screen1() -> UIViewController {
        return Module2.EntryPoints.default.buildScreen1()
    }

    func buildModule1Screen2() -> UIViewController {
        return Module1.EntryPoints.default.buildScreen2()
    }
}

extension Module1.EntryPoints {
    static var `default`: Module1.EntryPoints = {
        return Module1.EntryPoints(
            dependancies: Module1.Dependancies(),
            exitPoints: Module1ExitPoints()
        )
    }()
}
