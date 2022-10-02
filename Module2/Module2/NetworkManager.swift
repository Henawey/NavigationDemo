//
//  NetworkManager.swift
//  Module2
//

import Foundation

public protocol NetworkManager {
    func fetchData(result: @escaping (Data) -> Void)
}
