//
//  ButtonStyles.swift
//  kratos
//
//  Created by Elijah Kajinic on 9/7/20.
//  Copyright © 2020 Elijah Kajinic. All rights reserved.
//

import SwiftUI

struct RegularStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
    }
}

struct TestButton: View {
    var body: some View {
        VStack {
            Button(action: {}) {
                HStack {
                    Text("Test")
                }
            }.buttonStyle(RegularStyle())
        }
    }
}

struct ButtonStyles_Previews: PreviewProvider {
    static var previews: some View {
        TestButton()
    }
}
