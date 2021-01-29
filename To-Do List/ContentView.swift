//
//  ContentView.swift
//  To-Do List
//
//  Created by Student on 1/28/21.
//

import SwiftUI

struct ContentView: View {
    @State var things = ["First thing", "Second thing", "Third thing", "Fourth thing", "Fifth thing"]
    var body: some View {
        NavigationView {
            List {
                ForEach(things, id: \.self) {thing in
                    Text(thing)
                }
                .onMove(perform: { indices, newOffset in
                    things.move(fromOffsets: indices, toOffset: newOffset)
                })
                .onDelete(perform: { indexSet in
                    things.remove(atOffsets: indexSet)
                })
            }
            .navigationBarTitle("Things")
            .navigationBarItems(leading: EditButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

