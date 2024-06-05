//
//  TestTestInteractor.swift
//  VIPERsample
//
//  Created by jun.kohda on 05/06/2024.
//  Copyright © 2024 MobileAppHub. All rights reserved.
//

class TestInteractor: TestUseCase {

    weak var output: TestInteractorOutput!
    var TestDataManager: TestDataManagerProtocol!

    init(_ remoteDataManager: TestDataManagerProtocol) {
        TestDataManager = remoteDataManager
    }
}
