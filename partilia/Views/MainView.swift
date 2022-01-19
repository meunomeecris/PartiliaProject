//
//  MainView.swift
//  partilia
//
//  Created by Cris Messias on 18/01/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack{
            HeadView(title: "", subtitle: "Saldo: R$ 0,00", height: 160, color: "White")
            Spacer()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
