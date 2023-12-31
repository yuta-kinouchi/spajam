//
//  ContentView.swift
//  spajam
//
//  Created by 木内悠太 on 2023/08/19.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State private var inputValue: String = ""
    
    var body: some View {
        
        NavigationView {
            VStack{
                NavigationLink(destination: OkamotoView()) {
                    Text("岡本")
                }
                NavigationLink(destination: KinouchiView()) {
                    Text("木内")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
