//
//  ContentView.swift
//  NaviAndTab
//
//  Created by kiyolab02 on 2022/09/06.
//

import SwiftUI

struct ContentView: View {
    @State var selection = 1
    var body: some View {
        TabView(selection: $selection){
            Home()
                .tabItem {
                    Label("ホーム", systemImage: "house")
                }
                .tag(1)
            Setting()
                .tabItem{
                    Label("設定",systemImage: "gear")
            }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
