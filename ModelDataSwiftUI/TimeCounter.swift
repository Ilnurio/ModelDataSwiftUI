//
//  TimeCounter.swift
//  ModelDataSwiftUI
//
//  Created by Ilnur on 14.06.2023.
//

import SwiftUI
import Combine

final class TimeCounter: ObservableObject {
    let objectWillChange = ObservableObjectPublisher()
    
    var counter = 3
    private var timer: Timer?
    
    func startTimer() {
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(updateCounter),
            userInfo: nil,
            repeats: true
        )
    }
    
    @objc private func updateCounter() {
        if counter > 0 {
            counter -= 1
        } else {
            killTimer()
        }
        
        objectWillChange.send()
    }
    
    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }
}
