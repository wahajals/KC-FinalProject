//
//  Login.swift
//  iCare
//
//  Created by WSS on 06/09/2022.
//

import SwiftUI

struct Login: View {
    @StateObject var LoginModel: LoginViewModel =  .init()
    var body: some View {
//        ScrollView(.vertical,showsIndicators: false){
            ZStack{
                Color.init("CustomColor")
                    .ignoresSafeArea()
                RoundedRectangle(cornerRadius: 30,style: .continuous)
                    .foregroundStyle(.linearGradient(colors: [.init("CustomColor"),.init("CustomColor2")], startPoint: .topLeading, endPoint: .trailing))
                    .frame(width: 450, height: 450)
                    .rotationEffect(.degrees(135))
                    .offset(y: -350)
            VStack(alignment: .leading, spacing: 15){
                Text("Welcome")
                    .foregroundColor(.white)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .offset(y: -200)
                CustomTextField(hint: "965+ 46790365", text: $LoginModel.mobileNo)
                    .disabled(LoginModel.showOTPField)
                    .opacity(LoginModel.showOTPField ? 0.4 : 1)
                    .padding(.top,50)
                    
                CustomTextField(hint: "      OTP Code", text: $LoginModel.otpCode)
                    .disabled(!LoginModel.showOTPField)
                    .opacity(!LoginModel.showOTPField ? 0.4 : 1)
                    .padding(.top,30)
                
                Button(action: LoginModel.showOTPField ? LoginModel.verifyOTPCode : LoginModel.getOTPCode) {
                    HStack{
                        Text(LoginModel.showOTPField ? "Verify Code" : "Get Code")
                            .fontWeight(.semibold)
                            
                        Image(systemName: "line.diagonal.arrow")
                            .font(.title3)
                            .rotationEffect(.degrees(45))
                        
                    }
                    .foregroundColor(.black)
                    .padding(.horizontal,25)
                    .padding(.vertical)
                    .background(
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .fill(.linearGradient(colors: [.init("CustomColor"),.init("CustomColor2")], startPoint: .top, endPoint: .bottom))

                    
                    )
                }
                .padding(.top,40)
                
            }
            .padding(.leading,60)
            .padding(.vertical,15)
        }
//        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
