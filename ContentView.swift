//
//  ContentView.swift
//  test
//
//  Created by fai Mogbel on 21/08/1444 AH.
//

import SwiftUI












struct MatchView: View {
  var body: some View {
    Text("Match View")
      .font(.title)
  }
}



struct BookedView: View {
  var body: some View {
      
      
    Text("Booked View")
      .font(.title)
      
      
      
  }
}





struct ProfileView1: View {
  var body: some View {
    Text("Profile View")
      .font(.title)
  }
}
struct DiscoverView: View {
  var body: some View {
    Text("Discover View")
      .font(.title)
  }
}
struct MainView: View {
//    @State var isViewActive:bool =false
  var body: some View {
      
            NavigationView{
                
                VStack(alignment:.leading){
                    
                    Section{
                    Text("Good morning!")
                    // .multilineTextAlignment(.leading)
                    //.offset(x:20)
                    
                    Divider()
                    }
                    
                    Spacer()
                    ScrollView(.vertical,showsIndicators: false){
                        HStack(spacing:60){
                            Text("Recommended for you")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                          
                            NavigationLink(destination:ViewAllClubs()){ Text("View all")}
                            .foregroundColor(Color.green)
                        }//.offset(x:20)
                      
                        ScrollView(.horizontal){
                            HStack{
                                //                            VStack(alignment: .leading) {
                                //                                Text("Soprt Club")
                                //                                    .font(.title2)
                                //                                    .foregroundColor(.white)
                                //                                    .fontWeight(.bold)
                                //                                Text("Stake tokens and get rewards")
                                //                                    .foregroundColor(.white)
                                //                            }//.offset(y:30)
                                //                            .padding(.horizontal) // #1 - Texts padding
                                //                            .frame(height:140) // #4 - no maxWidth: .infinity
                                //
                                //                            .background(
                                //                                Image("ball")
                                //                                    .resizable()
                                //                                    .scaledToFill())
                                //                            .cornerRadius(10)
                                //.opacity(0.6)
                                //.shadow(color: .gray, radius: 8, x: 4, y: 4)
                                
                                
                                ZStack{
                                        Image("ball")
                                            .resizable()
                                            .cornerRadius(16)
                                            .frame(width: 250, height: 130)
                                    NavigationLink(destination: ClubDetailsView()){
                                        LinearGradient(
                                            gradient: Gradient(colors: [Color(white: 0, opacity: 0.75), .clear]),
                                            startPoint: .bottomLeading,
                                            endPoint: UnitPoint(x: 1.0, y: 0.4)
                                        ).cornerRadius(16)
                                        
                                            .overlay(Text("Al-Manar yard")
                                                .font(.title2)
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                                .padding(.bottom,-60)
                                                .padding(.leading,-80)
                                            )
                                            .overlay(
                                                Text(" near the Future Youth Park")
                                                    .foregroundColor(.white)
                                                    .padding(.top,80)
                                                    .padding(.leading)
                                                
                                            )
                                    }
                                }
                                    
                                ZStack{
                                    Image("sport")
                                        .resizable()
                                        .cornerRadius(16)
                                        .frame(width: 250, height: 130)
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color(white: 0, opacity: 0.75), .clear]),
                                        startPoint: .bottomLeading,
                                        endPoint: UnitPoint(x: 1.0, y: 0.4)
                                    ).cornerRadius(16)
                                    
                                        .overlay(Text("Al-Malaga padel")
                                            .font(.title2)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .padding(.bottom,-60)
                                            .padding(.leading,-60)
                                        )
                                        .overlay(
                                            Text("near the Future Youth Park")
                                                .foregroundColor(.white)
                                                .padding(.top,80)
                                                .padding(.leading)
                                        )
                                }
                                ZStack{
                                    Image("padel")
                                        .resizable()
                                        .cornerRadius(16)
                                        .frame(width: 250, height: 130)
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color(white: 0, opacity: 0.75), .clear]),
                                        startPoint: .bottomLeading,
                                        endPoint: UnitPoint(x: 1.0, y: 0.4)
                                    ).cornerRadius(16)
                                    
                                        .overlay(Text("Nore padel")
                                            .font(.title2)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .padding(.bottom,-60)
                                            .padding(.leading,-110)
                                        )
                                        .overlay(
                                            Text(" near the Future Youth Park")
                                                .foregroundColor(.white)
                                                .padding(.top,80)
                                                .padding(.leading)
                                        )
                                }
                                
                                
                                
                                //                            VStack(alignment: .leading) {
                                //                                Text("Padel Club")
                                //                                    .font(.title2)
                                //                                    .foregroundColor(.white)
                                //                                    .fontWeight(.bold)
                                //                                Text("Stake tokens and get rewards")
                                //                                    .foregroundColor(.white)
                                //                            }//.offset(y:30)
                                //                            .padding(.horizontal) // #1 - Texts padding
                                //                            .frame(maxHeight: 140) // #4 - no maxWidth: .infinity
                                //                            .background(
                                //                                Image("sport")
                                //                                    .resizable()
                                //                                    .scaledToFill())
                                //                            .cornerRadius(10)                            //                                  //  .offset(x:20)
                                //                                    .cornerRadius(10)
                            }//HStack
                            //.offset(x:10)
                        }// scroll
                        
                        //  Spacer()
                        ///////////////////////////Sport
                        HStack(spacing:240){
                            Text("Sport")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            NavigationLink(destination:SportsView()){ Text("View all")}
                                .foregroundColor(Color.green)
                        }//.offset(x:20)
                        ScrollView(.horizontal){
                            HStack{
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
                                Image("horse")
                                    .resizable()
                                    .frame(width: 140, height: 140)
                                    .cornerRadius(20)
                            }//.offset(x:10)
                        }
                        /////////////////////////////////////////// Nearby
                        HStack(spacing:220){
                            Text("Nearby")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            
                            NavigationLink(destination:ViewAllClubs()){ Text("View all")}
                                .foregroundColor(Color.green)
                        }//.offset(x:20)
                        
                        ScrollView(.horizontal){
                            HStack{
                                //                            VStack(alignment: .leading) {
                                //                                Text("hourse Club")
                                //                                    .font(.title2)
                                //                                    .foregroundColor(.white)
                                //                                    .fontWeight(.bold)
                                //                                Text("Stake tokens and get rewards")
                                //                                    .foregroundColor(.white)
                                //                            }//.offset(y:30)
                                //                            .padding(.horizontal) // #1 - Texts padding
                                //                            .frame(height:140) // #4 - no maxWidth: .infinity
                                //
                                //
                                //                            .background(
                                //                                Image("Nearby1")
                                //                                    .resizable()
                                //                                    .scaledToFill())
                                //                            .cornerRadius(10)
                                ZStack{
                                    Image("Nearby1")
                                        .resizable()
                                        .cornerRadius(16)
                                        .frame(width: 250, height: 130)
                                    NavigationLink(destination: ClubDetailsView()){
                                        LinearGradient(
                                            gradient: Gradient(colors: [Color(white: 0, opacity: 0.75), .clear]),
                                            startPoint: .bottomLeading,
                                            endPoint: UnitPoint(x: 1.0, y: 0.4)
                                        ).cornerRadius(16)
                                        
                                            .overlay(Text("Hourse Nagmah")
                                                .font(.title2)
                                                .fontWeight(.bold)
                                                .foregroundColor(.white)
                                                .padding(.bottom,-60)
                                                .padding(.leading,-60)
                                            )
                                            .overlay(
                                                Text(" near the Future Youth Park")
                                                    .foregroundColor(.white)
                                                    .padding(.top,80)
                                                    .padding(.leading)
                                            )
                                    }
                                }
                                ZStack{
                                    Image("Nearby2")
                                        .resizable()
                                        .cornerRadius(16)
                                        .frame(width: 250, height: 130)
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color(white: 0, opacity: 0.75), .clear]),
                                        startPoint: .bottomLeading,
                                        endPoint: UnitPoint(x: 1.0, y: 0.4)
                                    ).cornerRadius(16)
                                    
                                        .overlay(Text("Al-Malaga padel")
                                            .font(.title2)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .padding(.bottom,-60)
                                            .padding(.leading,-60)
                                        )
                                        .overlay(
                                            Text("near the Future Youth Park")
                                                .foregroundColor(.white)
                                                .padding(.top,80)
                                                .padding(.leading)
                                        )
                                }
                                ZStack{
                                    Image("Nearby3")
                                        .resizable()
                                        .cornerRadius(16)
                                        .frame(width: 250, height: 130)
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color(white: 0, opacity: 0.75), .clear]),
                                        startPoint: .bottomLeading,
                                        endPoint: UnitPoint(x: 1.0, y: 0.4)
                                    ).cornerRadius(16)
                                    
                                        .overlay(Text("Nore yard")
                                            .font(.title2)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .padding(.bottom,-60)
                                            .padding(.leading,-110)
                                        )
                                        .overlay(
                                            Text(" near the Future Youth Park")
                                                .foregroundColor(.white)
                                                .padding(.top,80)
                                                .padding(.leading)
                                        )
                                }
                                
                            }//HStack
                            //.offset(x:10)
                        }// scroll
                        
                    }//Scroll Vertical
                 // .frame(height:550)
                    
    //
    //                TabView{
    //                    Text("").tabItem {
    //                        Image(systemName: "sportscourt")
    //                        Text("Clubs") }
    //                    Text("Tab Content 2").tabItem {
    //                        Image(systemName: "square.and.line.vertical.and.square.filled")
    //                        Text("Match") }
    //                    Text("Tab Content 3").tabItem {
    //                        Image(systemName: "app.badge.checkmark")
    //                        Text("Booked") }
    //                    ProfileView().tabItem {
    //                        Image(systemName: "person")
    //                        Text("Profile") }
    //                    Text("").tabItem{
    //                        Image(systemName: "magnifyingglass")
    //                        Text("Discover")
    //                    }
    //                }
                    .foregroundColor(.white)
                    .accentColor(.green)
                    // .frame(height:50)
                    
                    
                    .navigationTitle(Text("Hello Fai"))
                    
                    //                .toolbar{
                    //                    ToolbarItemGroup(placement: .navigationBarTrailing){
                    //                        Button{
                    //                            print("profile tapped")
                    //                        }
                    //                    label:{
                    //                        Image(systemName:"person.circle")
                    //                            .foregroundColor(.green)
                    //                            .font(.system(size:40))
                    //                            //.offset(y:55)
                    //                            // padding()
                    //
                    //                    }}
                    //
                    //                }
                }//vstack
                .padding()
                
                    .overlay(
                        NavigationLink(destination: ProfileView()){
                            FaceView()
                        }
                            .padding(.trailing, 20)
                            .offset(x: 0, y:-50)
                        , alignment: .topTrailing)
                    //.offset(x: 0, y: -650)
                
                
                
            }//navigationVeiw
            //.offset(y:-20);
            //.padding()
        }
      
  }


struct ContentView: View {
    var body: some View {
        
        
       
        TabView {
              MainView()
                   .tabItem {
                     Label("Clubs", systemImage: "sportscourt.fill")
                   }
              Match()
                   .tabItem {
                     Label("Match", systemImage: "square.and.line.vertical.and.square.filled")
                   }
            Reservation()
                   .tabItem {
                     Label("Booked", systemImage: "app.badge.checkmark")
                   }
              ProfileView()
                   .tabItem {
                     Label("Profile", systemImage: "person")
                   }
            DiscoverClubs()
                 .tabItem {
                   Label("Discover", systemImage: "magnifyingglass")
                 }
            }    .accentColor(.green)










    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
