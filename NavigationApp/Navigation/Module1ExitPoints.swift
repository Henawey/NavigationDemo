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
        return Module2.EntryPoints(
            dependancies: Module2.Dependancies(networkManager: NetworkManager()),
            exitPoints: Module2ExitPoints()
        ).buildScreen1()
    }

    func buildModule1Screen2() -> UIViewController {
        return Module1.EntryPoints(
            dependancies: Module1.Dependancies(),
            exitPoints: self
        )
        .buildScreen2()
    }
}
