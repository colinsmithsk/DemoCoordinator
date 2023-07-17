//
//  CounterDemoApp.swift
//  CounterDemo
//
//  Created by Colin Smith on 7/7/23.
//

import SwiftUI

@main
struct CounterDemoApp: App {
    var body: some Scene {
        WindowGroup {
            DemoView(coordinator: DemoCoordinator())
        }
    }
}
