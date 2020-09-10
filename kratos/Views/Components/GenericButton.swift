//
//  Button.swift
//  kratos
//
//  Created by Elijah Kajinic on 9/1/20.
//  Copyright © 2020 Elijah Kajinic. All rights reserved.
//

import SwiftUI

struct GenericButton: View {
    var body: some View {
        NavigationLink(destination: CreateWorkoutScreen()) {
            HStack {
                Text("Create")
                Image(systemName: "plus")
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
        }
    }
}



struct Button_Previews: PreviewProvider {
    static var previews: some View {
        GenericButton()
    }
}
