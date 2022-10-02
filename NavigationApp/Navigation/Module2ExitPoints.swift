//
//  Module2ExitPoints.swift
//  NavigationApp
//

import UIKit

import Module1
import Module2

struct Module2ExitPoints: Module2.ExitPoints {
    func buildModule1Screen2() -> UIViewController {
        return Module1.EntryPoints(dependancies: Dependancies(),
                            exitPoints: Module1ExitPoints())
        .buildScreen2()
    }
}
