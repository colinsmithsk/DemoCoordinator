//
//  ContentView.swift
//  CounterDemo
//
//  Created by Colin Smith on 7/7/23.
//

import SwiftUI

struct DemoView: View {
    @ObservedObject var coordinator: DemoCoordinator
    
    var body: some View {
        VStack {
            switch coordinator.value {
            case .pending:
                ProgressView()
            case .value(let count):
                Text("\(count)")
                    .font(.largeTitle)
                Button {
                    coordinator.addValue()
                } label: {
                    Text("Increment Value")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DemoView(coordinator: DemoCoordinator())
    }
}
