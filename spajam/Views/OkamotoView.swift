//
//  OkamotoView.swift
//  spajam
//
//  Created by 木内悠太 on 2023/08/19.
//

import SwiftUI
import AVFoundation

struct OkamotoView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State private var inputValue: String = ""
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: OkamotoView()) {
                Text("画面遷移")
            }
        }
    }
}

struct OkamotoView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

