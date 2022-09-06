//
//  Setting.swift
//  NaviAndTab
//
//  Created by kiyolab02 on 2022/09/06.
//

import SwiftUI

struct Setting: View {
    @State var isOn1 = true
    @State var isOn2 = true
    var body: some View {
        NavigationView{
            VStack{
                List{
                    NavigationLink(destination: Text("")){
                        Text("ユーザー名\nApple ID、iCloud、メディアと購入")
                    }
                }
                List{
                    Toggle("機内モード" , isOn: $isOn1)
                    NavigationLink(destination: Toggle("Wi-Fi" , isOn: $isOn2)){
                        Text("Wi-Fi")
                    }
                    NavigationLink(destination: Text("Bluetooth")){
                        Text("Bluetooth")
                    }
                    NavigationLink(destination: Text("モバイル通信")){
                        Text("モバイル通信")
                    }
                    NavigationLink(destination: Text("インターネット共有")){
                        Text("インターネット共有")
                    }
                }
            }
            .navigationTitle("設定")
        }
        .navigationViewStyle(.stack)
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}
