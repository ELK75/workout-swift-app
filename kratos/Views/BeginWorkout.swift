//
//  BeginWorkout.swift
//  kratos
//
//  Created by Elijah Kajinic on 9/1/20.
//  Copyright © 2020 Elijah Kajinic. All rights reserved.
//

import SwiftUI

struct BeginWorkout: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    Text("Routines")
                        .font(.title)
                    Spacer()
                    GenericButton()
                    Spacer()
                }
                .padding()
                VStack(alignment: .leading) {
                    Text("Workouts")
                    VStack {
                        WorkoutList()
                    }
                }
                .padding()
                Spacer()
            }
            .navigationBarTitle("Begin Workout")
        }
    }
}

struct BeginWorkout_Previews: PreviewProvider {
    static var previews: some View {
        BeginWorkout()
    }
}
