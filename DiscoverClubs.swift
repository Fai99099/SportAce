//
//  DiscoverClubs.swift
//  test
//
//  Created by fai Mogbel on 27/08/1444 AH.
//

import SwiftUI

struct DiscoverClubs: View {
    @State private var searchTerm = ""
    var body: some View {
        
        NavigationView {
            
            VStack{
                
                ScrollView(.vertical){
                    
                    
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
                    ZStack{
                        Image("Nearby3")
                            .resizable()
                            .cornerRadius(16)
                            .frame(width: 350, height: 160)
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
                    
                    
                    
                    //                 swim   .navigationTitle("Discover")
                    
                    .searchable(text: $searchTerm)
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
                .overlay(
                    NavigationLink(destination:FillterView()){
                        
                        
                        Image(systemName:"slider.horizontal.3")
                            .foregroundColor(.green)
                            .font(.system(size:25))
                            .padding(.trailing, 20)
                    }
                            .offset(x: 0, y: -90)
                        , alignment: .topTrailing)
                    
                            .navigationTitle(Text("Discover"))
                    
            }
            
        }
    }
}
struct DiscoverClubs_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverClubs()
    }
}

