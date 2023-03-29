//
//  ViewAllClubs.swift
//  test
//
//  Created by fai Mogbel on 28/08/1444 AH.
//

import SwiftUI

struct ViewAllClubs: View {

    var body: some View {
  
            VStack{
                Divider()
                ScrollView(.vertical){
                    
                    ZStack{
                        Image("Nearby3")
                            .resizable()
                            .cornerRadius(16)
                            .frame(width: 350, height: 160)
                        NavigationLink(destination: ClubDetailsView()){
                            LinearGradient(
                                gradient: Gradient(colors: [Color(white: 0, opacity: 0.75), .clear]),
                                startPoint: .bottomLeading,
                                endPoint: UnitPoint(x: 1.0, y: 0.4)
                            ).cornerRadius(16)
                            
                                .overlay(Text("Nore yard")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .padding(.top,80)
                                    .padding(.leading,-160)
                                )
                                .overlay(
                                    Text(" near the Future Youth Park")
                                        .foregroundColor(.white)
                                        .padding(.top,130)
                                        .padding(.leading,-100)
                                )
                        }
                    }
                    ZStack{
                        Image("Nearby1")
                            .resizable()
                            .cornerRadius(16)
                            .frame(width: 350, height: 160)
                        LinearGradient(
                            gradient: Gradient(colors: [Color(white: 0, opacity: 0.75), .clear]),
                            startPoint: .bottomLeading,
                            endPoint: UnitPoint(x: 1.0, y: 0.4)
                        ).cornerRadius(16)
                        
                            .overlay(Text("Hourse Nagmah")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.top,80)
                                .padding(.leading,-160)
                            )
                            .overlay(
                                Text(" near the Future Youth Park")
                                    .foregroundColor(.white)
                                    .padding(.top,130)
                                    .padding(.leading,-100)
                            )
                    }
                    ZStack{
                        Image("sport")
                            .resizable()
                            .cornerRadius(16)
                            .frame(width: 350, height: 160)
                        LinearGradient(
                            gradient: Gradient(colors: [Color(white: 0, opacity: 0.75), .clear]),
                            startPoint: .bottomLeading,
                            endPoint: UnitPoint(x: 1.0, y: 0.4)
                        ).cornerRadius(16)
                        
                            .overlay(Text("Hourse Nagmah")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.top,80)
                                .padding(.leading,-160)
                            )
                            .overlay(
                                Text(" near the Future Youth Park")
                                    .foregroundColor(.white)
                                    .padding(.top,130)
                                    .padding(.leading,-100)
                            )
                    }
                    ZStack{
                        Image("swim")
                            .resizable()
                            .cornerRadius(16)
                            .frame(width: 350, height: 160)
                        LinearGradient(
                            gradient: Gradient(colors: [Color(white: 0, opacity: 0.75), .clear]),
                            startPoint: .bottomLeading,
                            endPoint: UnitPoint(x: 1.0, y: 0.4)
                        ).cornerRadius(16)
                        
                            .overlay(Text("Swimming pool")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.top,80)
                                .padding(.leading,-160)
                            )
                            .overlay(
                                Text(" near the Future Youth Park")
                                    .foregroundColor(.white)
                                    .padding(.top,130)
                                    .padding(.leading,-100)
                            )
                    }
                    ZStack{
                        Image("Nearby2")
                            .resizable()
                            .cornerRadius(16)
                            .frame(width: 350, height: 160)
                        LinearGradient(
                            gradient: Gradient(colors: [Color(white: 0, opacity: 0.75), .clear]),
                            startPoint: .bottomLeading,
                            endPoint: UnitPoint(x: 1.0, y: 0.4)
                        ).cornerRadius(16)
                        
                            .overlay(Text("Al-Malaga padel")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .padding(.top,80)
                                .padding(.leading,-160)
                            )
                            .overlay(
                                Text(" near the Future Youth Park")
                                    .foregroundColor(.white)
                                    .padding(.top,130)
                                    .padding(.leading,-100)
                            )
                    }
                   
                    
                    
                    
                    //                 swim   .navigationTitle("Discover")
                    
                    
                    //                .toolbar{
                    //
                    //                    Button{
                    //                        print("profile tapped")
                    //                    }
                    //                label:{
                    //                    Image(systemName:"slider.horizontal.3")
                    //                        .foregroundColor(.green)
                    //                        .font(.system(size:20))
                    //                        .offset(y:55)
                    //
                    //                }
                    //                }
                    
                }
                .padding()
                .navigationTitle(Text("All Clubs"))
                
            }
            
        
    }
}

struct ViewAllClubs_Previews: PreviewProvider {
    static var previews: some View {
        ViewAllClubs()
    }
}
