//
//  SideMenuView.swift
//  iCare
//
//  Created by WSS on 01/09/2022.
//

import SwiftUI

struct SideMenuView: View {
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.init("CustomColor"),Color.init("CustomColor2")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
              SideMenuHeaderView()
                    .frame(height: 200)
                    .foregroundColor(.white)
                ForEach(SideMenu.allCases, id: \.self) { option in
                    NavigationLink {
                        Text(option.title)
                    } label: {
                        SideMenuOptionView(viewModel: option)
                    }

                }
                Spacer()
            }
         
        }
     
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
