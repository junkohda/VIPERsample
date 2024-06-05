//
//  TestTestContract.swift
//  VIPERsample
//
//  Created by jun.kohda on 05/06/2024.
//  Copyright © 2024 MobileAppHub. All rights reserved.
//

import UIKit

protocol TestViewInput: AnyObject {
    func showIndicator()
    func hideIndicator()
    func showLoadingError()
}

protocol TestViewOutput: AnyObject {
    func start()
}

protocol TestPresentation: AnyObject {
    var view: TestViewInput? { get set }
    var interactor: TestUseCase! { get set }
    var router: TestWireframe! { get set }
}

protocol TestUseCase: AnyObject {
    var output: TestInteractorOutput! { get set }
}

protocol TestInteractorOutput: AnyObject {
}

protocol TestWireframe: AnyObject {
    static func assembleModule(_ isDirectlyLoaded: Bool) -> UINavigationController
}

