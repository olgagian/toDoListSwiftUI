//
//  ContentView.swift
//  ToDoList
//
//  Created by ioannis giannakidis on 29/10/19.
//  Copyright © 2019 ioannis giannakidis. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var toDoItem = ""
    @State private var setPriority = ""
    var body: some View {
        VStack{
            NavigationView{
                List{
                    HStack{
                        TextField("Enter an item",text:$toDoItem)
                            .padding(.all,2)
                            .font(Font.system(size:25, design: .default))
                            .multilineTextAlignment(.center)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        Button(action: {
                            //save user entered to do item, to Core DAta
                            
                            
                        }){
                            Image(systemName: "plus.circle")
                                .imageScale(.large)
                        }
                        
                    }
                    Picker(selection:$setPriority, label:Text("")){
                        Text("Not in a Rush")
                        Text("Important")
                        Text("Urgent")
                    }.pickerStyle(SegmentedPickerStyle())
                }.navigationBarTitle(Text("My to Do's "))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
