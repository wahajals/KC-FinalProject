//
//  loginSignUp.swift
//  iCare
//
//  Created by WSS on 07/09/2022.
//

import SwiftUI
import Firebase

struct loginSignUp: View {
    @State private var email = ""
    @State private var password = ""
    @State private var userIsLoggedIn = false

    var body: some View {
        if userIsLoggedIn{
            content
        } else {
           ProfileView()
        }
    }

    var content: some View{
        ZStack{
            Color.init("CustomColor")
                .ignoresSafeArea()
            RoundedRectangle(cornerRadius: 30,style: .continuous)
                .foregroundStyle(.linearGradient(colors: [.init("CustomColor"),.init("CustomColor2")], startPoint: .topLeading, endPoint: .trailing))
                .frame(width: 1000, height: 400)
                .rotationEffect(.degrees(135))
                .offset(y: -350)
            VStack(spacing: 20){
                Text("Welcome ")
                    .foregroundColor(.white)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .offset(x: -100, y: -100)
                    TextField("Email", text: $email)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty) {
                        Text("Email")
                            .foregroundColor(.white)
                            .bold()

                    }
                    Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.white)
                SecureField("Password", text: $password)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: password.isEmpty) {
                        Text("Password")
                            .bold()
                            .foregroundColor(.white)
                    }
                Rectangle()
                .frame(width: 350, height: 1)
                .foregroundColor(.white)

                Button {
                    register()
                } label: {
                    Text("Sign Up")
                        .bold()
                        .frame(width: 200, height: 40)
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .fill(.linearGradient(colors: [.init("CustomColor"),.init("CustomColor2")], startPoint: .top, endPoint: .bottom))
                        )
                }.foregroundColor(.white)
                    .padding(.top)
                    .offset(y: 100)
                Button {
                   login()
                } label: {
                    Text("Already have an account? Login")
                        .bold()
                        .foregroundColor(.white)
                }
                .padding(.top)
                .offset(y: 110)

            }
            .frame(width: 350)
            .onAppear {
                Auth.auth().addStateDidChangeListener { auth, user in
                    if user != nil {
                        userIsLoggedIn.toggle()
                    }
                }
            }
        }
    }

    func login(){
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if error != nil{
                print(error!.localizedDescription)
            }
        }
    }

    func register(){
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if error != nil{
                print(error!.localizedDescription)
            }
        }
    }
}


struct LoginSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        loginSignUp()
    }
}

extension View{
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
