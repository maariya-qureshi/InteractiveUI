//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Maariya Qureshi on 7/9/25.
//

import SwiftUI

struct ContentView: View {
    
    //storing variable for the input in the button
    //property wrappers: gives var additional behavior, ex: @State -> makes swift update it once it is changed
    //private prevents it from being accessed outside
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        VStack {
            Text(textTitle) //var above
                .font(.title) //this is a modifier
            
            TextField("Type name here...", text: $name)
            //$name: stores values inside the name property (var)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.pink, width: 3)
            
            //Button: string that makes up the text, and inside: an action
            
            Button("Submit Name") {
                textTitle = "Welcome \(name)!"
                //this references back that variable and changes it to read welcome _ name
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.pink)
        }
        .padding() //pushes things out of edges of phone
    }
}

#Preview {
    ContentView()
}
