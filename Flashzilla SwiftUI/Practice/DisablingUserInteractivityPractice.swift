//
//  DisablingUserInteractivityPractice.swift
//  Flashzilla SwiftUI
//
//  Created by Mitch Andrade on 2/28/22.
//

import SwiftUI

struct DisablingUserInteractivityPractice: View {
    var body: some View {
        VStack {
            Text("Hello")
            Spacer().frame(height: 100)
            Text("World")
        }
        .contentShape(Rectangle())
        .onTapGesture {
            print("VStack tapped!")
        }
//        ZStack {
//            Rectangle()
//                .fill()
//                .frame(width: 300, height: 300)
//                .onTapGesture {
//                    print("Rectangle tapped!")
//                }
//
//            Circle()
//                .fill(.red)
//                .frame(width: 300, height: 300)
//                .contentShape(Rectangle())
//                .onTapGesture {
//                    print("Circle tapped!")
//                }
//        }
    }
}

struct DisablingUserInteractivityPractice_Previews: PreviewProvider {
    static var previews: some View {
        DisablingUserInteractivityPractice()
    }
}
