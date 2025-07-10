//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Maariya Qureshi on 7/9/25.
//
//original code:
/*import SwiftUI

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
            
            Button("Submit") {
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
*/



import SwiftUI

struct ContentView: View {
    
    //storing variable for the input in the button
    //property wrappers: gives var additional behavior, ex: @State -> makes swift update it once it is changed
    //private prevents it from being accessed outside
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    @State private var favSnack = ""
    @State private var birthday = Date()
    //dates are func's
    
    //alert value:
    @State private var presentAlert = false
    
    var body: some View {
        VStack {
            Text(textTitle) //var above
                .font(.title) //this is a modifier
            
            TextField("Type name here...", text: $name)
            //$name: stores values inside the name property (var)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.pink, width: 3)
            
            TextField("Enter your favorite snack...", text: $favSnack)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.pink, width: 3)
            
            //Adding in date picker:, components: only date not time
            DatePicker(selection: $birthday, displayedComponents: [.date], label: { Text("Birthday") })
                .datePickerStyle(.graphical)
                .font(.title)
                .buttonStyle(.borderedProminent)
                .tint(.pink)
            
            
            
            //Button: string that makes up the text, and inside: an action
            
            Button("Submit") {
                presentAlert = true
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.pink)
        }
        .padding() //pushes things out of edges of phone
        //alert is the message that appears, resets presentedAlert, and runs the actions of presenting a button with OK and the message of displaying the result
        .alert("Thanks!", isPresented: $presentAlert, actions: {
            Button("OK")
            {
                name = "";
                favSnack = ""
                birthday = Date()
            }
        }, message: {
            Text("It is received: \(name)'s favorite snack is \(favSnack) and their birthday is \(birthday.formatted(date: .long, time: .omitted))")
        })
    }
}

#Preview {
    ContentView()
}

