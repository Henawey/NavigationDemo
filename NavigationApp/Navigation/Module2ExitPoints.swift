//
//  Module2ExitPoints.swift
//  NavigationApp
//

import UIKit

import Module1
import Module2

struct Module2ExitPoints: Module2.ExitPoints {
    func buildModule1Screen2() -> UIViewController {
        return Module1.EntryPoints.default.buildScreen2()
    }
}

extension Module2.EntryPoints {
    static var `default`: Module2.EntryPoints = {
        return Module2.EntryPoints(
            dependancies: Module2.Dependancies(networkManager: NetworkManager()),
            exitPoints: Module2ExitPoints()
        )
    }()
}
