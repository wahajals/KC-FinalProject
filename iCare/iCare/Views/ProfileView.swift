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
                    .frame(maxWidth:.infinity, maxHeight:.infinity, alignment: .bottom)
                    .font(.system(size: 30, weight:.bold))
                    .padding()
                    .font(.custom("Chivo", size: 30))
                    .shadow(radius: 5)
                    .foregroundColor(.init("CustomColor"))
               
                    .background(Rectangle().stroke(.tertiary))
                                    .frame(width: 500, height:50)
                Spacer()
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
