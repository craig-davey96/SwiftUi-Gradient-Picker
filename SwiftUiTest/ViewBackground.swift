//
//  ViewBackground.swift
//  SwiftUiTest
//
//  Created by Craig Davey on 10/11/2023.
//

import SwiftUI

struct ViewBackground: View {
    
    var backgroundFill: Color
    
    var body: some View {
        ContainerRelativeShape()
            .fill(backgroundFill.gradient)
            .ignoresSafeArea()
    }
}
