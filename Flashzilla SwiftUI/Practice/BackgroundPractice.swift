//
//  BackgroundPractice.swift
//  Flashzilla SwiftUI
//
//  Created by Mitch Andrade on 2/28/22.
//

import SwiftUI

struct BackgroundPractice: View {
    @Environment(\.scenePhase) var scenePhase
    
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onChange(of: scenePhase) { newPhase in
                if newPhase == .active {
                    print("Active")
                } else if newPhase == .inactive {
                    print("Inactive")
                } else if newPhase == .background {
                    print("Background")
                }
            }
    }
}

struct BackgroundPractice_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundPractice()
    }
}

