//
//  TabButtonView.swift
//  iCare
//
//  Created by WSS on 01/09/2022.
//

import SwiftUI

struct TabButtonView: View {
    var image: String
    var title: String
    
    @Binding var selectedTab: String
    var animation: Namespace.ID
    var body: some View {
        
        Button {
            withAnimation(.spring()){selectedTab = title}
        } label: {
            HStack(spacing : 15){
                Image(systemName: image)
                    .font(.title2)
                    .frame(width: 30)
                Text(title)
                    .fontWeight(.semibold)
            }
            .foregroundColor( selectedTab == title ? Color.secondary : .white)
            .padding(.vertical,12)
            .padding(.horizontal,10)
            .background(
                ZStack{
                    if selectedTab ==  title{
                        Color.white
                            .opacity(selectedTab == title ? 1 : 0)
                            .clipShape(CustomCorners(corners: [.topRight,.bottomRight], radius: 12))
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    }
                }
            )
        }

    }
}

struct TabButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
