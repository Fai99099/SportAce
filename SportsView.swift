//
//  SportsView.swift
//  test
//
//  Created by fai Mogbel on 28/08/1444 AH.
//

import SwiftUI

struct SportsView: View {
    var body: some View {
      
            
            VStack{
                Divider()
                ScrollView(.vertical){
                    VStack{
                        HStack(spacing:20){
                            NavigationLink(destination: ViewAllClubs()){
                                Image("football")
                                
                                    .resizable()
                                    .frame(width: 140, height: 140)
                                    .cornerRadius(20)
                            }
                            Image("padel1")
                                .resizable()
                                .frame(width: 140, height: 140)
                                .cornerRadius(20)
                            
                        }
                        
                        HStack(spacing:20){
                            Image("bicycle")
                                .resizable()
                                .frame(width: 140, height: 140)
                                .cornerRadius(20)
                            Image("horse")
                                .resizable()
                                .frame(width: 140, height: 140)
                                .cornerRadius(20)
                            
                        }
                        HStack(spacing:20){
                            Image("kids")
                                .resizable()
                                .frame(width: 140, height: 140)
                                .cornerRadius(20)
                            
                        }
                        
                    }
                }.padding()
                    
                }
                .padding()
                .navigationTitle(Text("Discover Sport"))
               
                
            
            
//                .overlay(
//                    Image(systemName:"chevron.backward")
//                        .foregroundColor(.green)
//                        .font(.system(size:25))
//                        .padding(.trailing, 20)
//                        .offset(x: -100, y: -80)
//                    , alignment: .topTrailing)
//                Text("Clubs")
            }
    }


struct SportsView_Previews: PreviewProvider {
    static var previews: some View {
        SportsView()
    }
}
