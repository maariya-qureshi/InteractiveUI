//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Maariya Qureshi on 7/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("What is your name?")
                .font(.title)
            
            TextField("Type name here...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            
            //Button: string that makes up the text, and inside: an action
            Button("Submit Name") {
                
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
