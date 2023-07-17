//
//  DemoCoordinator.swift
//  CounterDemo
//
//  Created by Colin Smith on 7/7/23.
//

import Foundation



enum State {
    case pending
    
    case value(Int)
    
}

@MainActor
class DemoCoordinator: ObservableObject {
    
    @Published var value: State = .value(0)
    
    func addValue() {
        Task {
            switch value {
            case .pending:
                break //shouldn't be winding up here
            case .value(let count):
                value = .pending
                try await Task.sleep(nanoseconds: 2000000000)
                value = .value(count + 1)
            }
        }
    }
}
