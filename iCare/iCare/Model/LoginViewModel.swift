//
//  LoginViewModel.swift
//  iCare
//
//  Created by WSS on 06/09/2022.
//

import SwiftUI
import Firebase

class LoginViewModel: ObservableObject {
    
    @Published var mobileNo: String = ""
    @Published var otpCode: String = ""
    @Published var CLIENT_CODE: String = ""
    @Published var showOTPField: Bool = false
    @Published var showError: Bool = false
    @Published var errorMessage: String = ""
    func getOTPCode(){
        UIApplication.shared.closeKeyboard()
        Task{
            do{
                Auth.auth().settings?.isAppVerificationDisabledForTesting = true
                
                let code = try await PhoneAuthProvider.provider().verifyPhoneNumber("+\(mobileNo)", uiDelegate: nil)
                await MainActor.run(body: {
                    CLIENT_CODE = code
                    withAnimation(.easeInOut){showOTPField = true}
                })
            }catch{
               await handleError(error: error)
            }
        }
    }
    
    func verifyOTPCode(){
        UIApplication.shared.closeKeyboard()
        Task{
            do{
                let credntial = PhoneAuthProvider.provider().credential(withVerificationID: CLIENT_CODE, verificationCode: otpCode)
                
                try await Auth.auth().signIn(with: credntial)
                print("Success!")
            }catch{
               await handleError(error: error)
            }
        }
    }
    
    func handleError(error:Error)async{
        await MainActor.run(body: {
            errorMessage = error.localizedDescription
            showError.toggle()
        })
    }
}

extension UIApplication{
    func closeKeyboard(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

