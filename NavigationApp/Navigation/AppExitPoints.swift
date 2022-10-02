//
//  Router.swift
//  NavigationApp
//

import UIKit
import Module1
import Module2

struct AppExitPoints {
//    func buildInitialScreen() -> UIViewController {
//        return buildM1V1()
//    }

    // [M1V1 -> M2V1 -> M1V2]
    func buildInitialScreen() -> UIViewController {
        let navigationController = UINavigationController()

        let readyAction: Module2.PostAction = {
            navigationController.show(buildM1V2(), sender: nil)
        }

        navigationController.viewControllers = [buildM1V1(), buildM2V1(postAction: readyAction)]
        return navigationController
    }
}

private extension AppExitPoints {
    func buildM1V1() -> UIViewController {
        let dependancies = Module1.Dependancies()
        let module1ExitPoints = Module1ExitPoints()

        return Module1.EntryPoints(
            dependancies: dependancies,
            exitPoints: module1ExitPoints
        )
        .buildScreen1()
    }

    func buildM1V2() -> UIViewController {
        let dependancies = Module1.Dependancies()
        let module1ExitPoints = Module1ExitPoints()

        return Module1.EntryPoints(
            dependancies: dependancies,
            exitPoints: module1ExitPoints
        )
        .buildScreen2()
    }

    func buildM2V1(postAction: @escaping Module2.PostAction) -> UIViewController {
        let dependancies = Module2.Dependancies(networkManager: NetworkManager())
        let module2ExitPoints = Module2ExitPoints()

        return Module2.EntryPoints(
            dependancies: dependancies,
            exitPoints: module2ExitPoints,
            readyForNextAction: postAction
        )
        .buildScreen1()
    }
}

// --> Weak typed (pub sub, command -> observer, SOA (event, pipelines))
// ----> module1 (Strong type)
// ---->(decoder)--> (Weak type) -->(encoder)
// ----> module2 (strong type)
