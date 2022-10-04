//
//  Dependancies.swift
//  Module2
//

import Foundation

public protocol NetworkManager {
    func fetchData(result: @escaping (Data) -> Void)
}

public struct Dependancies {
    let networkManager: NetworkManager

    public init(networkManager: NetworkManager) {
        self.networkManager = networkManager
    }
}
