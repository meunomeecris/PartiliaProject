//
//  ComponentsView.swift
//  partilia
//
//  Created by Cris Messias on 18/01/22.
//

import SwiftUI

struct ComponentsView: View {
    var body: some View {
        VStack {
            HeadView(title: "Welcome to Partília!", subtitle: "Here every penny counts!", height: nil, color: "White")
            TextInput(label: "Email", texthelper: "myemail@email.com")
            PasswordInput(label: "Password", texthelper: "Tap your password")
        }
    }
}




struct HeadView: View {
    var title: String
    var subtitle: String
    var height: CGFloat? = 200 // valor default
    var color: String
    
    var body: some View{
        VStack{
            Image("logoPartilia")
                .resizable()
                .frame(width: 120, height: 46)
                .padding(.bottom)
           Text(title)
                .font(.title3)
                .fontWeight(.heavy)
                .padding(.bottom, 5)
                .foregroundColor(Color("White"))
            Text(subtitle)
                .font(.callout)
                .foregroundColor(Color(color))
        }
        .frame(maxWidth:.infinity, maxHeight: height)
        .background(Color("GreenRegular"))
    } //end the body view
} //end the headLogin

    
struct TextInput: View {
    @State var username: String = ""
    var label: String
    var texthelper: String
   
    var body: some View{
        VStack {
            VStack(alignment: .leading){
                Text(label)
                    .font(.callout)
                    .foregroundColor(.purpleDark)
                    .padding(.leading)
                Spacer()
                TextField(texthelper, text: $username)
                    .frame(width: .infinity, height: 54)
                    .padding(.leading)
                    .textInputAutocapitalization(.never)
            }
            .frame(width: .infinity, height: 80)
        

        }//end the VStack
    }// end the body
}//end the inputLogin

struct PasswordInput: View{
    var label: String
    var texthelper: String
    
    @State var password: String = ""
    var body: some View{
        VStack(alignment: .leading){
            Text(label)
                .font(.callout)
                .foregroundColor(.purpleDark)
                .padding(.leading)
            Spacer()
            HStack{
                SecureField(texthelper, text: $password)
                    .frame(width: .infinity, height: 54)
                    .padding(.leading)
                    .textInputAutocapitalization(.never)
                Image(systemName: "eye.slash")
                    .padding(.trailing)
                    .foregroundColor(.purpleDark)
            }
        }
        .frame(width: .infinity, height: 80)
        
    }
}

extension Color{
    static let purpleDark = Color("PurpleDark")
}



struct ComponentsView_Previews: PreviewProvider {
    static var previews: some View {
        ComponentsView()
    }
}
