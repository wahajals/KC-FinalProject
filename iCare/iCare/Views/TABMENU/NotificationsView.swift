//
//  NotificationsView.swift
//  iCare
//
//  Created by WSS on 31/08/2022.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        ZStack{
            VStack{
                Text("Notifications")
                    .frame(maxWidth:.infinity, maxHeight:.infinity, alignment: .bottom)
                    .font(.system(size: 30, weight:.bold))
                    .padding()
                    .font(.custom("Chivo", size: 30))
                    .shadow(radius: 5)
                    .foregroundColor(.init("CustomColor"))
                    .background(Rectangle().stroke(.tertiary))
                    .frame(width: 500, height:30)
               
                Spacer()
            Image("notification-bell")
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250, alignment: .center)
                Spacer()
            Text("")
            }
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
