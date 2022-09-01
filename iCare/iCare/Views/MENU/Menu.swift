//
//  Menu.swift
//  iCare
//
//  Created by WSS on 01/09/2022.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color.white
                Text("Hello World")
                    .padding()
            }
            .navigationBarItems(leading: Button(action: {
                
            }, label: {
                Image(systemName: "list.bullet.indent")
                    .foregroundColor(.init("CustomColor"))
            }))
            .navigationTitle("Home")
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
