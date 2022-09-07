//
//  ProfileView.swift
//  iCare
//
//  Created by WSS on 31/08/2022.
//

import SwiftUI
import Firebase
struct ProfileView: View {
    var body: some View {
        ZStack{
            VStack{
                Text("My Profile")
                    .frame(width:500,height:30, alignment: .bottom)
                    .font(.system(size: 30, weight:.bold))
                    .padding()
                    .font(.custom("Chivo", size: 30))
                    .shadow(radius: 5)
                    .foregroundColor(.init("CustomColor"))
               
                    .background(Rectangle().stroke(.tertiary))
                                    .frame(width: 500,
                                           height:30)
                Spacer()
                Button {
                    DispatchQueue.global(qos: .background).async {
                       try? Auth.auth().signOut()
                    }
                } label: {
                    Text("Log Out")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.vertical,12)
                        .frame(width: UIScreen.main.bounds.width / 2)
                        .background(.black)
                                
                        
                        .offset(y: -250)
                }

                Image("user")
                               .resizable()
                               .scaledToFit()
                               .frame(width: 150, height: 150)

            Spacer()
               
           
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
