//
//  ContentView.swift
//  kratos
//
//  Created by Elijah Kajinic on 8/30/20.
//  Copyright © 2020 Elijah Kajinic. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1
 
    var body: some View {
        TabView(selection: $selection){
            Text("View")
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Feed")
                    }
                }
                .tag(0)
            BeginWorkout()
                .tabItem {
                    VStack {
                        Image(systemName: "plus")
                        Text("Add")
                    }
                }
                .tag(1)
            Text("Third View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "person.circle")
                        Text("Profile")
                    }
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
