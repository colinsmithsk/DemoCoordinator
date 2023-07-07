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

class DemoCoordinator: ObservableObject {
    
    @Published var value: State
    
    init(startingValue: State) {
        self.value = startingValue
    }
     
    
    func addValue() async {
        
        switch self.value {
        case .pending:
            break //shouldn't be winding up here
        case .value(let count):
            DispatchQueue.main.async {
                self.value = .pending
            }
            sleep(2)
            DispatchQueue.main.async {
                self.value = .value(count + 1)
            }

        }
        
        
        
    }
    
    
}
