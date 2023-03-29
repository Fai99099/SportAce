//
//  JoinMatch.swift
//  test
//
//  Created by fai Mogbel on 28/08/1444 AH.
//

import SwiftUI

struct JOIN: Identifiable {
    var id = UUID()
    var image: String
    var Sport: String
    var Date: String
    var Team1:String
    var Team2:String
}




struct Row: View {
    var DATA: JOIN
    var body: some View {
        VStack(){
          
            HStack {
                Image(DATA.image)
                    .resizable()
                    .frame(width: 90,height: 60)
                
                VStack{
                    
                    Text(DATA.Sport)
                        .font(.title2)
                        .fontWeight(.medium)
                        .frame(width: 103, alignment: .leading)
                        
                    Text(DATA.Date)
                        .font(.caption)
                        .frame(width: 100, alignment: .leading)
                    Text(DATA.Team1)
                        .font(.caption)
                        .frame(width: 100, alignment: .leading)
                    Text(DATA.Team2)
                        .font(.caption)
                        .frame(width: 100, alignment: .leading)
                    
                }
               
                NavigationLink(destination: MatchDitails()) {
                    Text("")}
                    .font(.caption)
                .fontWeight(.heavy)
               .buttonStyle(.automatic)
               .padding(.leading, 52.0)
                

            }
      
           
        }
        
        
        
    }
}



struct JoinMatch: View {
    @State var FootBall = false
    @State var HourseRading = false
    @State var Swimming = false
    @State var Padel = false
    
    
    let UP_DATA: [JOIN] = [
        JOIN(image: "F1", Sport: "Foot Ball", Date:"21 April",Team1:"Team 1: (9/11)",Team2: "Team 2: (4/11)"),
        JOIN(image: "f2", Sport:"Padel", Date:"1 March",Team1:"Team 1: (0/1)",Team2: "Team 2: (1/1)"),
        JOIN(image: "BB", Sport:"Baskit Ball", Date:"1 Augest",Team1:"Team 1: (3/5)",Team2: "Team 2: (4/5)"),
        JOIN(image: "f3", Sport: "Foot Ball", Date:"21 April",Team1:"Team 1: (9/11)",Team2: "Team 2: (4/11)"),
        
    ]
    
   
    var body: some View {
        //after clikling view in match page
      
            VStack(spacing:20){
                Spacer()
                    .navigationTitle("Join match")
                Divider()
                    
                    ScrollView(.horizontal){
                        HStack(){
                            
                            Toggle("Foot Ball", isOn: $FootBall)
                                .foregroundColor(.black)
                                .toggleStyle(.button)
                                .tint(.green)
                                .font(.title3)
                                .foregroundColor(Color.black)
                                .padding(5)
                                .clipShape(Capsule())
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color.green, lineWidth: 2)
                                )
                            
                                .cornerRadius(25)
                            Toggle("Hourse Rading ", isOn: $HourseRading)
                                .foregroundColor(.black)
                                .toggleStyle(.button)
                                .tint(.green)
                                .font(.title3)
                                .foregroundColor(Color.black)
                                .padding(5)
                                .clipShape(Capsule())
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color.green, lineWidth: 2)
                                )
                            
                                .cornerRadius(25)
                            
                            
                            
                            Toggle("Swimming", isOn: $Swimming)
                                .foregroundColor(.black)
                                .toggleStyle(.button)
                                .tint(.green)
                                .font(.title3)
                                .foregroundColor(Color.black)
                                .padding(5)
                                .clipShape(Capsule())
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color.green, lineWidth: 2)
                                )
                            
                                .cornerRadius(25)
                            
                            Toggle("Padel", isOn: $Padel)
                                .foregroundColor(.black)
                                .toggleStyle(.button)
                                .tint(.green)
                                .font(.title3)
                                .foregroundColor(Color.black)
                                .padding(5)
                                .clipShape(Capsule())
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color.green, lineWidth: 2)
                                )
                            
                                .cornerRadius(25)
                        }
                            
                    }.padding(.leading,30)
                        List {
                            
                            Section(header: Text("Available to Join ")
                                .font(.title)
                                .fontWeight(.regular)
                                .foregroundColor(Color.black)
                                .shadow(radius: 0)
                                .background(Color.gray.opacity(0.2)))
                            {
                                
                                ForEach(UP_DATA){ DATA in Row (DATA: DATA)
                                        .listRowSeparator(.hidden)
                                    
                                }.listRowBackground(Color.white)
                                
                            }.padding()
                            
                        }
                        .listStyle(.plain)
                        .shadow(color: Color.gray, radius: 1)
                        .background(.white)
                      .scrollContentBackground(.hidden)
                        
//                        HStack(spacing: 10){
//                            Button("Football") {
//
//                            }
//                            .foregroundColor(Color.black)
//                            .padding()
//                            //.background(Color.green)
//                            .clipShape(Capsule())
//                            .overlay(
//                                            RoundedRectangle(cornerRadius: 25)
//                                .stroke(Color.green, lineWidth: 2)
//                                    )
//
//                                .cornerRadius(25)
//                            Button("padel") {
//
//                            }
//                            .foregroundColor(Color.black)
//                            .padding()
//                            .clipShape(Capsule())
//                            .overlay(
//                                            RoundedRectangle(cornerRadius: 25)
//                                .stroke(Color.green, lineWidth: 2)
//                                    )
//
//                                .cornerRadius(25)
//
//                            Button("Swimming pools") {
//
//                            }
//                            .foregroundColor(Color.black)
//                            .padding()
//                            .clipShape(Capsule())
//                            .overlay(
//                                            RoundedRectangle(cornerRadius: 25)
//                                .stroke(Color.green, lineWidth: 2)
//                                    )
//
//                                .cornerRadius(25)
//
//                            Button("horse back-ridng") {
//
//                            }
//                            .foregroundColor(Color.black)
//                            .padding()
//                            .clipShape(Capsule())
//                            .overlay(
//                                            RoundedRectangle(cornerRadius: 25)
//                                .stroke(Color.green, lineWidth: 2)
//                                    )
//
//                                .cornerRadius(25)
//                        }
                    
                    //.padding(.leading, 60.0)
                
                
                
//                ScrollView{
//                    VStack(spacing: 30.0){
//                        Section{
//                            ZStack{
//                                Rectangle()
//                                    .foregroundColor(Color("lightGreen"))
//                                    .border(Color.gray)
//                                    .cornerRadius(10)
//                                HStack{
//                                    Image("ft1")
//                                        .resizable()
//                                        .frame(width: 130,height: 85)
//
//                                    VStack{
//                                        Text("Football Match")
//                                            .font(.title2)
//                                        Text("21 April")
//                                            .padding(.leading, -76.0)
//
//                                        Text("Team 1: (9/11)")
//                                            .padding(.leading, -50.0)
//                                        Text("Team 2: (3/11)")
//                                            .padding(.leading, -50.0)
//                                    }
//                                    .frame(width: 150)
//                                    .foregroundColor(.black)
//
//                                    Button("View") {
//
//                                    }
//                                    .foregroundColor(.black)
//                                    .background(Color.white)
//                                    .border(Color("lightGray"))
//                                    .clipShape(Rectangle())
//                                    .cornerRadius(3)
//                                    .frame(width: 50)
//
//                                }
//                            }.frame(width: 500,height: 100)
//
//                        }
//
//                        Section{
//                            ZStack{
//                                Rectangle()
//                                    .foregroundColor(Color("lightGreen"))
//                                    .border(Color.gray)
//                                    .cornerRadius(10)
//                                HStack{
//                                    Image("ft2")
//                                        .resizable()
//                                        .frame(width: 130,height: 85)
//                                    VStack{
//                                        Text("Football Match")
//                                            .font(.title2)
//                                        Text("21 April")
//                                          .padding(.leading, -76.0)
//
//                                        Text("Team 1 (2/9)")
//                                            .padding(.leading, -60.0)
//                                        Text("Team 2 (5/9)")
//                                            .padding(.leading, -60.0)
//                                    }
//                                    .frame(width: 150)
//                                    .foregroundColor(.black)
//
//                                    Button("View") {
//
//                                    }
//                                    .foregroundColor(.black)
//                                    .background(Color.white)
//                                    .border(Color("lightGray"))
//                                    .clipShape(Rectangle())
//
//
//                                }
//
//                            }.frame(width: 500,height: 100)
//                        }
//
//
//                        Section{
//                            ZStack{
//                                Rectangle()
//                                    .foregroundColor(Color("lightGreen"))
//                                    .border(Color.gray)
//                                    .cornerRadius(10)
//                                HStack{
//                                    Image("ft3")
//                                        .resizable()
//                                        .frame(width: 130,height: 85)
//                                    VStack{
//                                        Text("Football Match")
//                                            .font(.title2)
//                                        Text("21 April")
//                                            .padding(.leading, -76.0)
//
//                                        Text("Team 1: (9/11)")
//                                            .padding(.leading, -50.0)
//                                        Text("Team 2: (3/11)")
//                                            .padding(.leading, -50.0)
//                                    }
//                                    .frame(width: 150)
//                                    .foregroundColor(.black)
//
//                                    Button("View") {
//
//                                    }
//                                    .foregroundColor(.black)
//                                    .background(Color.white)
//                                    .border(Color("lightGray"))
//                                    .clipShape(Rectangle())
//                                    .cornerRadius(3)
//                                    .frame(width: 50)
//                                    //                      .shadow(radius: <#T##CGFloat#>)
//                                }.clipShape(Rectangle())
//                                    .foregroundColor(.gray)
//                            }.frame(width: 500,height: 100)
//
//                        }
//                    }
//                }
                
                
//                TabView(selection: .constant(1)) {
//                    Text("").tabItem {
//                        Image(systemName: "sportscourt")
//                        
//                        Text("Clubs") }.tag(1)
//                    
//                    Text("").tabItem {
//                        Image(systemName: "square.and.line.vertical.and.square.filled")
//                        Text("Match") }.tag(2)
//                        .accentColor(.green)
//                    
//                    Text("").tabItem {
//                        Image(systemName: "app.badge.checkmark")
//                        Text("Booked") }.tag(3)
//                    Text("").tabItem {
//                        Image(systemName: "person")
//                        Text("Profile") }.tag(4)
//                }
//                .frame(width: 400,height: 50)
//                .foregroundColor(.gray)
//                .accentColor(.green)
            }
            .padding(.all, -20.0)
            .frame( maxWidth:.infinity, maxHeight: .infinity)
            //.foregroundColor(.gray)
            
        }
    
}

struct JoinMatch_Previews: PreviewProvider {
    static var previews: some View {
        JoinMatch()
    }
}
