//
//  JoinMatch.swift
//  test
//
//  Created by fai Mogbel on 28/08/1444 AH.
//

import SwiftUI

struct Match: View {
    var body: some View {
        NavigationView{
            VStack(spacing:80){
                Spacer()
                
                    .navigationTitle("Match")
                Divider()
                VStack(alignment:.leading,spacing: 20){
                    NavigationLink(destination:CreateMatch()){
                        Image("Create")
                            .resizable()
                            .frame(width: 350,height:200)
                            .cornerRadius(20)
                    }
                    NavigationLink(destination:JoinMatch()){
                        Image("Join")
                        .resizable()
                        .frame(width: 350,height:200)
                        .cornerRadius(20)
                    }
                    
                }.padding([.leading, .bottom, .trailing],250)
                
               
                
            } //end vstack
            //.navigationTitle("Match")
            
        }
        //navView

    }
    
}
struct Match_Previews: PreviewProvider {
    static var previews: some View {
        Match()
    }
}
