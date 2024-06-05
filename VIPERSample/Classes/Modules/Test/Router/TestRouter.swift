//
//  TestTestRouter.swift
//  VIPERsample
//
//  Created by jun.kohda on 05/06/2024.
//  Copyright © 2024 MobileAppHub. All rights reserved.
//

import SwiftUI
import UIKit

class TestRouter: TestWireframe {
    private weak var viewController: UIViewController?
    private weak var presenter:TestPresenter?

    init(_ presenter:TestPresenter) {
        self.presenter = presenter
    }

    static func assembleModule(_ isDirectlyLoaded: Bool) -> UINavigationController {
        let view = TestView(isDirectlyLoaded: isDirectlyLoaded)
        let presenter = TestPresenter()
        let router = TestRouter(presenter)
        let interactor = TestInteractor(TestDataManager())
        let hostViewController = UIHostingController(rootView: view)
        hostViewController.title = "Test"
        let navigationController = UINavigationController(rootViewController: hostViewController)
        navigationController.navigationBar.tintColor = .white

        presenter.view = view.viewModel
        presenter.router = router
        presenter.interactor = interactor
        interactor.output = presenter
        view.viewModel.output = presenter
        router.viewController = hostViewController
        navigationController.delegate = presenter

        return navigationController
    }
}
