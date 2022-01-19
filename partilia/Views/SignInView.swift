//
//  SignInView.swift
//  partilia
//
//  Created by Cris Messias on 18/01/22.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        VStack {
            HeadView(title: "Be part of Partília!", subtitle: "Here every penny counts!", color: "White")
            VStack{
                TextInput(label: "Name", texthelper: "Tap your name")
                TextInput(label: "Email", texthelper: "Tap your email")
                PasswordInput(label: "Passoword", texthelper: "Tap you password")
            }
            .padding(.top)
            Spacer()
            LineButton(textOne: "Already have an account?", textTwo: "Log in")
            PrimaryButtom(text: "Creat account")
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
