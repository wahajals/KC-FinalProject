//
//  HomeIView.swift
//  iCare
//
//  Created by WSS on 31/08/2022.
//

import SwiftUI

struct HomeIView: View {
    private let adaptiveColumns = [
        GridItem(.flexible(minimum: 170)),
        GridItem(.flexible(minimum: 170)),
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
                    LazyVGrid(columns:adaptiveColumns, spacing: 20){
                      
                            ZStack{
                                ExtractedView(myTitle: "Meditation")
                                NavigationLink {
                                    Meditation()
                                } label: {
                                    Text("")
                                        .frame(width:170, height: 170)
                                }
                            }
                            ZStack{
                                ExtractedView(myTitle: "Exercises")
                                NavigationLink {
                                    Exercises()
                                } label: {
                                    Text("")
                                        .frame(width:170, height: 170)
                                }
                            }
                        ZStack{
                            ExtractedView(myTitle: "Awareness")
                            NavigationLink {
                                Awareness()
                            } label: {
                                Text("")
                                    .frame(width:170, height: 170)
                            }
                        }
                        ZStack{
                            ExtractedView(myTitle: "Consult A Doctor")
                            NavigationLink {
                                ConsultDoctor()
                            } label: {
                                Text("")
                                    .frame(width:170, height: 170)
                            }
                        }
                        ZStack{
                            ExtractedView(myTitle: "Lifestyle")
                            NavigationLink {
                                LIfestyle()
                            } label: {
                                Text("")
                                    .frame(width:170, height: 170)
                            }
                        }
                        ZStack{
                            ExtractedView(myTitle: "Calendar")
                            NavigationLink {
                                Calendar()
                            } label: {
                                Text("")
                                    .frame(width:170, height: 170)
                            }
                        }
                        ZStack{
                            ExtractedView(myTitle: "Health Tracker")
                            NavigationLink {
                                HealthTracker()
                            } label: {
                                Text("")
                                    .frame(width:170, height: 170)
                            }
                        }
                        ZStack{
                            ExtractedView(myTitle: "Products")
                            NavigationLink {
                                Products()
                            } label: {
                                Text("")
                                    .frame(width:170, height: 170)
                            }
                        }
                        ZStack{
                            ExtractedView(myTitle: "Community")
                            NavigationLink {
                                Community()
                            } label: {
                                Text("")
                                    .frame(width:170, height: 170)
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




struct ExtractedView: View {
    @State var myTitle: String
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 170, height: 170)
                .foregroundColor(.white)
                .cornerRadius(25)
                .shadow(radius: 10)
            Image(myTitle)
                .resizable()
                .frame(width: 170, height: 170)
                .blur(radius: 4)
                .cornerRadius(25)
            Text(myTitle)
                .bold()
                .frame(width:170, height:170)
                .font(.system(.title3))
                .foregroundColor(.white)
       
        }
    }
}
