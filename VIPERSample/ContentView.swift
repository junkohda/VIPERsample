//
//  ContentView.swift
//  VIPERSample
//
//  Created by jun.kohda on 2024/06/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBarControllerRepresentable(viewControllers: [
            TestRouter.assembleModule(true),
            UIHostingController(rootView: SecondView())
        ])
        .edgesIgnoringSafeArea(.all)
    }
}

struct TabBarControllerRepresentable: UIViewControllerRepresentable {
    var viewControllers: [UIViewController]

    func makeUIViewController(context: Context) -> UITabBarController {
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = viewControllers

        if let firstNC = viewControllers[0] as? UINavigationController {
            firstNC.tabBarItem = UITabBarItem(title: "First", image: UIImage(systemName: "1.circle"), tag: 0)
        }

        if let secondVC = viewControllers[1] as? UIHostingController<SecondView> {
            secondVC.tabBarItem = UITabBarItem(title: "Second", image: UIImage(systemName: "2.circle"), tag: 1)
        }

        return tabBarController
    }

    func updateUIViewController(_ uiViewController: UITabBarController, context: Context) {

    }
}

struct FirstView: View {
    var body: some View {
        VStack {
            Text("First View")
                .font(.largeTitle)
                .padding()
        }
    }
}

struct SecondView: View {
    var body: some View {
        VStack {
            Text("Second View")
                .font(.largeTitle)
                .padding()
        }
    }
}

// Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
