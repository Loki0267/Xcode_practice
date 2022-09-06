//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by kiyolab02 on 2022/08/23.
//

import SwiftUI

struct ContentView: View {
    @State var str = "Hello SwiftUI!"
    var body: some View {
        VStack {
            Text(str)
                .padding()
                .foregroundColor(.green)
            Button("ボタン"){
                str = "ハローSwiftUI！"
                print("ボタンが押された")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
