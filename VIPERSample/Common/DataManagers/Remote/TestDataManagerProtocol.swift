//
//  TestDataManagerProtocol.swift
//  VIPERSample
//
//  Created by jun.kohda on 2024/06/05.
//

import Foundation

protocol TestDataManagerProtocol {
    func get(_ page: Int, completion: @escaping ((TestResponse) -> Void), fail: (([String]) -> Void)?)
}
