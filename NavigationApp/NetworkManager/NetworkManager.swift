//
//  NetworkManager.swift
//  NavigationApp
//

import Foundation
import Module2

struct NetworkManager {}

extension NetworkManager: Module2.NetworkManager {
    func fetchData(result: @escaping (Data) -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 3) {
            DispatchQueue.main.async {
                result(Data())
            }
        }
    }
}
