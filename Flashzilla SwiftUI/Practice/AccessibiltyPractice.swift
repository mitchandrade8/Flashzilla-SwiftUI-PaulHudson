//
//  AccessibiltyPractice.swift
//  Flashzilla SwiftUI
//
//  Created by Mitch Andrade on 2/28/22.
//

import SwiftUI

func withOptionalAnimation<Result>(_ animation: Animation? = .default, _ body: () throws -> Result) rethrows -> Result {
    if UIAccessibility.isReduceMotionEnabled {
        return try body()
    } else {
        return try withAnimation(animation, body)
    }
}

struct AccessibiltyPractice: View {
    @Environment(\.accessibilityReduceTransparency) var reduceTransparency
    
    var body: some View {
        Text("What it do babbyyy!")
            .padding()
            .background(reduceTransparency ? .black : .black.opacity(0.5))
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}

//@Environment(\.accessibilityReduceMotion) var reduceMotion
//@State private var scale = 1.0
//
//var body: some View {
//    Text("What it do babbyyy!")
//        .scaleEffect(scale)
//        .onTapGesture {
//            withOptionalAnimation {
//                scale *= 1.5
//            }
//        }
//}

    
//    @Environment(\.accessibilityDifferentiateWithoutColor) var differentiateWithoutColor
//
//    var body: some View {
//        HStack {
//            if differentiateWithoutColor {
//                Image(systemName: "checkmark.circle")
//            }
//
//            Text("Success")
//        }
//        .padding()
//        .background(differentiateWithoutColor ? .black : .green)
//        .foregroundColor(.white)
//        .clipShape(Capsule())
//    }


struct AccessibiltyPractice_Previews: PreviewProvider {
    static var previews: some View {
        AccessibiltyPractice()
    }
}
