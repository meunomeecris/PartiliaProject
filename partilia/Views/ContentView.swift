//
//  ContentView.swift
//  partilia
//
//  Created by Cris Messias on 08/12/21.
//

import SwiftUI

struct ContentView: View {
    @State private var loginViewIsShow = false
    
    var body: some View {
            TabView{
                MainView()
                    .tabItem(){
                        Image(systemName: "house")
                    }
                NewGroupView()
                    .tabItem(){
                        Image(systemName: "plus.circle.fill")
                    }
                SettingView()
                    .tabItem(){
                        Image(systemName: "person")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }
