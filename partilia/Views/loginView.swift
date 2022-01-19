//
//  loginView.swift
//  partilia
//
//  Created by Cris Messias on 05/01/22.
//

import SwiftUI

struct loginView: View {
    var body: some View {
            VStack {
                HeadView(title: "Welcome to Partília!", subtitle: "Here every penny counts!", height: 240, color: "White")
                VStack {
                    TextInput(label: "Email", texthelper: "myemail@email.com")
                    PasswordInput(label: "Password", texthelper: "Tap your password")
                }
                .padding(.top, 24)
                .padding(.bottom, 24)
                LineButton(textOne: "Forgot your passoword?", textTwo: "")
                Spacer()
                LineButton(textOne: "Don't have account?" , textTwo: "Create one!")
                PrimaryButtom(text: "Log in")
            }
            .edgesIgnoringSafeArea(.all)
    } // end the body view
} //end the loginView

    
struct loginView_Previews: PreviewProvider {
    static var previews: some View {
        loginView()
    }
}
