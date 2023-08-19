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
            Form {
                TextField("Enter Value", text: $inputValue)
                Button("Save to Database") {
                    aiTalk()
                }
            }
        }
    }
    
    private func aiTalk() {
        let apiUrl = URL(string: "https://webapi.aitalk.jp/webapi/v5/ttsget.php")!
        var request = URLRequest(url: apiUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = """
        {
            "username": "spajam2023",
            "password": "gGLgPWBp",
            "speaker_name": "aoi_emo",
            "text": "こんにちは",
        }
        """.data(using: .utf8)
     
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
//                responseText = "Error: \(error?.localizedDescription ?? "Unknown error")"
                return
            }

            if let responseJSON = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
//                if let result = responseJSON["result"] as? String {
//                    responseText = "Response: \(result)"
//                } else {
//                    responseText = "Invalid Response"
//                }
            }
        }.resume()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
