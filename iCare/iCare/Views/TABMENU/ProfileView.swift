//
//  ProfileView.swift
//  iCare
//
//  Created by WSS on 31/08/2022.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack{
            VStack{
                Text("My Profile")
                    .frame(width:400,height:60, alignment: .bottom)
                    .font(.system(size: 30, weight:.bold))
                    .padding()
                    .font(.custom("Chivo", size: 30))
                    .shadow(radius: 5)
                    .foregroundColor(.init("CustomColor"))
               
                    .background(Rectangle().stroke(.tertiary))
                                    .frame(width: 400,
                                           height:60)
                Spacer()
                
//                Button("Logout"){
//                    try? Auth.auth().signOut()
////                    signIn.sharedInstance.signOut()
//                    withAnimation(.easeInOut){
//                        userIsLoggedIn = false
//                    }
//                   
//                }.background(.teal)
//                    .frame(width: 200, height: 100)
//                    .clipShape(Circle())
//                    .padding()
//                    .cornerRadius(25)
                
                
            }
        }
    }
    }


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
