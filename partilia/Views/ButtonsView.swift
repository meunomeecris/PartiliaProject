//
//  ButtonsView.swift
//  partilia
//
//  Created by Cris Messias on 05/01/22.
//

import SwiftUI

struct ButtonsView: View {
    var body: some View {
        ZStack {
            Color("GreenRegular")
                .edgesIgnoringSafeArea(.all)
            VStack {
                PrimaryButtom(text: "Text")
                SecondaryButtom(text: "Text")
                LineButton(textOne: "Create one!" , textTwo: "Don't have account?")
            }
        }
    }
}

struct PrimaryButtom: View{
    var text: String
    var body: some View{
        Button(action: {}) { //Entrar Button
            Text(text)
                .bold()
                .font(.title3)
                .foregroundColor(Color("White"))
                Spacer()
                Image(systemName: "arrow.right")
                .foregroundColor(Color("White"))
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 93)
        .background(
            Color("PurpleDark")
        )
    }
}

struct SecondaryButtom: View{
    var text: String
    var body: some View{
        Button(action: {}) { //Entrar Button
            Text(text)
                .bold()
                .font(.title3)
                .foregroundColor(Color("Black"))
                Spacer()
                Image(systemName: "arrow.right")
                .foregroundColor(Color("Black"))
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 93)
        .background(
            Color("White")
        )
    }
}

struct LineButton:View{
    var textOne: String
    var textTwo: String
    
    var body: some View{
        VStack {
            Button(action: {}) {
                Text(textOne)
                    .font(.callout)
                    .foregroundColor(Color("Black"))
                Text(textTwo)
                    .font(.callout)
                    .bold()
                    .foregroundColor(Color("PurpleLight"))
            }
            .padding(.bottom, 24)
        }
    }
}
struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsView()
    }
}
