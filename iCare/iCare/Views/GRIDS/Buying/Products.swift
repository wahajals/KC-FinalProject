//
//  Products.swift
//  iCare
//
//  Created by WSS on 02/09/2022.
//

import SwiftUI

struct Products: View {
//    var myProducts: ProductsData
    var body: some View {
        NavigationView{
            ZStack(alignment:.topLeading){
                Rectangle()
                    .frame(width: 180, height:180)
                    .foregroundColor(.white)
                    .cornerRadius(25)
                    .shadow(radius: 10)
                    .padding()
                Image("Migraine")
                    .resizable()
                    .frame(width: 170, height: 170)
                    .blur(radius: 2)
                    .cornerRadius(25)
                    .padding()
                Text("Migraine Products")
                    .bold()
                    .frame(width:180, height:150, alignment: .bottom)
                    .foregroundColor(.black)
                    .font(.title3)
                    .padding()
                NavigationLink {
                  ProductsViewing()
                } label: {
                    Text("")
                        .frame(width: 170, height:170)
                }

                Spacer()
            .padding()

            }.navigationTitle("Products")
        }
    }
}

struct Products_Previews: PreviewProvider {
    static var previews: some View {
        Products()
    }
}
