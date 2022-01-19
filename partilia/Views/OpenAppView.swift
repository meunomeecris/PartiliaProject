//
//  OpenAppView.swift
//  partilia
//
//  Created by Cris Messias on 19/01/22.
//

import SwiftUI

struct OpenAppView: View {
    var body: some View {
        ZStack{
            Color("GreenRegular")
                .edgesIgnoringSafeArea(.all) //extender para toda a tela
            
            VStack {
                Spacer()
                Image("logoPartilia")
                Spacer()
                PrimaryButtom(text: "Log in")
                .padding(.bottom, -10)
                SecondaryButtom(text:"Sign up")
            }
        }
    }
}


struct OpenAppView_Previews: PreviewProvider {
    static var previews: some View {
        OpenAppView()
    }
}
