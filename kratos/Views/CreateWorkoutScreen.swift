//
//  CreateWorkoutScreen.swift
//  kratos
//
//  Created by Elijah Kajinic on 9/1/20.
//  Copyright © 2020 Elijah Kajinic. All rights reserved.
//

import SwiftUI

struct CreateWorkoutScreen: View {
    @ObservedObject var textBindingManager = TextBindingManager(limit: 30)
    
    var body: some View {
        VStack {
            HStack {
                TextField("Routine Name", text: $textBindingManager.text)
                    .font(.title)
                Spacer()
                Button(action: {}) {
                    HStack {
                        Text("Save")
                    }
                }.buttonStyle(RegularStyle())
            }
            .padding(.horizontal)
            
            VStack {
                NavigationLink(destination: BeginWorkout()) {
                    HStack {
                        Text("Add New Exercise")
                        Image(systemName: "plus")
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 20)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                }            }
            .padding(.vertical)
            
            Spacer()
        }
    }
}

struct CreateWorkoutScreen_Previews: PreviewProvider {
    static var previews: some View {
        CreateWorkoutScreen()
    }
}
