//
//  TestTestPresenter.swift
//  VIPERsample
//
//  Created by jun.kohda on 05/06/2024.
//  Copyright © 2024 MobileAppHub. All rights reserved.
//

import SwiftUI

class TestPresenter: NSObject {
    var view: TestViewInput?
    var interactor: TestUseCase!
    var router: TestWireframe!

    private func updateView() {

    }
}

extension TestPresenter: TestInteractorOutput {

}

extension TestPresenter: TestViewOutput {
    func start() {

    }
}

extension TestPresenter: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        navigationController.setNavigationBarHidden(true, animated: false)
    }
}
