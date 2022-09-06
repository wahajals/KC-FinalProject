//
//  ProductsViewing.swift
//  iCare
//
//  Created by WSS on 06/09/2022.
//

import SwiftUI

struct ProductsViewing: View {
    private let Columns = [
        GridItem(.adaptive(minimum: 170))
    ]
    var body: some View {
        NavigationView{
            ZStack{
                ScrollView{
                    LazyVGrid(columns:Columns,spacing: 20){
                        ForEach(ProductsData) { Data in
                            ZStack{
                                Rectangle()
                                    .frame(width: 180, height:180)
                                    .foregroundColor(.white)
                                    .cornerRadius(25)
                                    .shadow(radius: 10)
                                Image(Data.name)
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .blur(radius: 2)
                                    .cornerRadius(25)
                                Text(Data.name)
                                    .font(.title3)
                                    .bold()
                                    .foregroundColor(.black)
                                    .frame(width: 150, height: 170,alignment:.bottom)
                                    .padding()
                                ForEach(ProductsData) { product in
                                    NavigationLink {
                                        ProductsInfo(myProducts: Data)
                                    } label: {
                                        Text("")
                                            .frame(width: 170, height:170)
                                    }
                                }
                            }
                        }
                    }.navigationTitle("Migraine Products")
                }
            }
        }
    }

struct ProductsViewing_Previews: PreviewProvider {
    static var previews: some View {
        ProductsViewing()
    }
}
}
