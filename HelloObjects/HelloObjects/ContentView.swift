//
//  ContentView.swift
//  HelloObjects
//
//  Created by kiyolab02 on 2022/08/23.
//

import SwiftUI

struct ContentView: View {
    @State var inputText = ""
    @State var isOn = true
    
    var body: some View {
        VStack {
            Circle()
            List {
                Text("りんご")
                Text("みかん")
                Text("ブドウ")
            }
            Image(systemName: "menucard")
            TextField("ここに文字を入力", text: $inputText)
            Toggle("toggle" , isOn: $isOn)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
