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
                    .font(.system(size: 40, weight:.bold))
                    .padding()
                    .font(.custom("Chivo", size: 40))
                    .shadow(radius: 5)
                    .foregroundColor(.init("CustomColor"))
                    .background(Rectangle().stroke().foregroundColor(.secondary))
                    .frame(width: 500, height:120).edgesIgnoringSafeArea(.all)
                Spacer()
            Image("user")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150, alignment:.top)
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
