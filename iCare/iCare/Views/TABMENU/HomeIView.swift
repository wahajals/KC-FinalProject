//
//  HomeIView.swift
//  iCare
//
//  Created by WSS on 31/08/2022.
//

import SwiftUI

struct HomeIView: View {
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))
    ]
    var body: some View {
        NavigationView{
            VStack{
//                Text("iCare")
//                    .frame(maxWidth:.infinity, maxHeight:.infinity, alignment: .bottom)
//                    .font(.system(size: 60, weight:.bold))
//                    .padding()
//                    .font(.custom("Chivo", size: 80))
//                    .shadow(radius: 5)
//                    .foregroundColor(.init("CustomColor"))
//                    .background(Rectangle().stroke(.tertiary))
//                    .frame(width: 500, height:60)
//              Spacer()

                ScrollView{
                    TabView {
                        ForEach(myTabScrollView) { Tab in
                            Image(Tab.title)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 500, height:300)
                            
                            
                        }
                    }
                    .background(.thinMaterial)
                    .cornerRadius(15)
                    .frame(height: 300)
                    .tabViewStyle(PageTabViewStyle())
                    
                    Spacer()
                    LazyVGrid(columns: adaptiveColumns,spacing: 20){
                        ForEach(myGrids) { grid in
                            ZStack{
                                Rectangle()
                                    .frame(width: 170, height: 170)
                                    .foregroundColor(.white)
                                    .cornerRadius(25)
                                    .shadow(radius: 10)
                                Image(grid.title)
                                    .resizable()
                                    .frame(width: 170, height: 170)
                                    .blur(radius: 4)
                                    .cornerRadius(25)
                                Text(grid.title)
                                    .bold()
                                    .frame(width:170, height:170)
                                    .font(.system(.title3))
                                    .foregroundColor(.white)
                                
                                    ForEach(myGrids) { grid in
                                        NavigationLink {
                                            Meditation()
                                        } label: {
                                            Text(" ")
                                        }
                                    }
                                    
                                
                            }
                        }
                        
                    }
                    .navigationTitle("iCare")
                    .navigationBarTitleDisplayMode(.inline)
                }
               
            }
            }
    }

struct HomeIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeIView()
    }
}
}


