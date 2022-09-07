//
//  CustomTextField.swift
//  iCare
//
//  Created by WSS on 06/09/2022.
//

import SwiftUI

struct CustomTextField: View {
    var hint:String
    @Binding var text: String
    
    @FocusState var isEnabled: Bool
    var contentType: UITextContentType = .telephoneNumber
    var body: some View {
        VStack(alignment: .leading, spacing: 15 ){
            TextField(hint, text: $text)
                .keyboardType(.numberPad)
                .textContentType(contentType)
                .focused($isEnabled)
                .foregroundColor(.white)
            
            ZStack(alignment: .leading){
                Rectangle()
                    .fill(.black.opacity(0.2))
                    Rectangle()
                    .fill(.black)
                    .frame(width: isEnabled ? nil : 0, alignment: .leading)
                    .animation(.easeInOut(duration: 0.3), value: isEnabled)
            }
            .frame(height:2)
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
