//
//  ProductsInfo.swift
//  iCare
//
//  Created by WSS on 06/09/2022.
//

import SwiftUI

struct ProductsInfo: View {
    var myProducts: ProductDetails
    var body: some View {
            ZStack{
                Image("20")
                    .resizable()
                    .ignoresSafeArea()
                    .background(.white)
                    .blur(radius: 8)
            VStack{
                Image(myProducts.name)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 220, height: 200)
                Text(myProducts.name)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                Text("Benefit:")
                    .bold()
                    .foregroundColor(.black)
                    .font(.title2)
                Text(myProducts.title)
                    .font(.title2)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                Spacer()
            }
            }
        }
    }


struct ProductsInfo_Previews: PreviewProvider {
    static var previews: some View {
        ProductsInfo(myProducts: ProductDetails(name: "Magnesium", title: "According to the American Migraine Foundation , may help reduce migraines", url: ""))
    }
}
