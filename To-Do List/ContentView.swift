//
//  ContentView.swift
//  To-Do List
//
//  Created by Student on 1/28/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
        List {
            Text("First thing")
            Text("Second thing")
            Text("Third thing")
            Text("Fourth thing")
            Text("Fifth thing")
        }
        .navigationBarTitle("Things")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
