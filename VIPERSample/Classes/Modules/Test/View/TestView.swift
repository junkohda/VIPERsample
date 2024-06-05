//
//  TestTestView.swift
//  VIPERsample
//
//  Created by jun.kohda on 05/06/2024.
//  Copyright © 2024 MobileAppHub. All rights reserved.
//

import SwiftUI
import SwiftUIIntrospect

struct TestView: View {
    @ObservedObject(initialValue: TestViewModel()) var viewModel: TestViewModel
    var isDirectlyLoaded: Bool

    var body: some View {
        NavigationView {
            VStack {
                Text("SwiftUI")
            }
            .onAppear {
                UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
            }
            .navigationBarTitle(isDirectlyLoaded ? "Test" : "", displayMode: .inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .introspect(.tabView, on: .iOS(.v13, .v14, .v15, .v16, .v17)) { tabView in
            tabView.tabBar.isHidden = false
        }
    }
}

class TestViewModel: ObservableObject {
    var output: TestViewOutput?
    
    init() {}
}

extension TestViewModel: TestViewInput {
    func showIndicator() {}
    func hideIndicator() {}
    func showLoadingError() {}
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView(isDirectlyLoaded: true)
    }
}
