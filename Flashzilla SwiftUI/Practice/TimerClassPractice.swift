//
//  TimerClassPractice.swift
//  Flashzilla SwiftUI
//
//  Created by Mitch Andrade on 2/28/22.
//

import SwiftUI

struct TimerClassPractice: View {
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State private var counter = 0
    
    var body: some View {
        Text("Hello, world!")
            .onReceive(timer) { time in
                if counter == 5 {
                    timer.upstream.connect().cancel()
                } else {
                    print("The time is now \(time)")
                }
                
                counter += 1
            }
    }
}

struct TimerClassPractice_Previews: PreviewProvider {
    static var previews: some View {
        TimerClassPractice()
    }
}
