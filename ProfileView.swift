//
//  ProfileView.swift
//  test
//
//  Created by fai Mogbel on 26/08/1444 AH.
//

import SwiftUI

struct Payment {
    static let allPayments = [
        "cridt card",
        "Apple pay",
        "STC pay"
        
    ]
}

struct ProfileView: View {
    @State private var payment = ""
    var body: some View {
      
       
            
            VStack{
                Image("face")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                Text("Fai Almogbel")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                
                
                List {
                    
                    HStack{
                        Image(systemName: "gearshape")
                        Text("Setting")
                        Spacer()
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.gray)
                    }
                    
                    HStack{
                        Image(systemName: "creditcard")
                        Picker(selection: $payment,
                               label: Text("Payment")) {
                            ForEach(Payment.allPayments, id: \.self) { payment in
                                Text(payment).tag(payment)
                            }
                        }
                    }
                    HStack{
                        Image(systemName: "calendar.badge.clock")
                        Text("History Matches")
                        Spacer()
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.gray)
                    }
                    HStack{
                        Image(systemName: "doc.text")
                        Text("Polices")
                        Spacer()
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.gray)
                    }
                    HStack{
                        Image(systemName: "questionmark.circle")
                        Text("F.A.Q.")
                        Spacer()
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.gray)
                    }
                    HStack{
                        Image(systemName: "rectangle.portrait.and.arrow.right")
                        Text("Log out")
                    }
                    
                
                }.navigationBarTitle(Text("Profile"))
                    .background(Color.white.ignoresSafeArea())
                    .scrollContentBackground(.hidden)
                    .shadow(color:Color.gray,radius: 1.0 )
                   // .border(.black)
              
                
                   
                        
//                TabView{
//                    ContentView().tabItem {
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
//                    
//                }
//                .foregroundColor(.white)
//                .accentColor(.green)
//                .frame(height:50)
            
           

            }
        }
    }

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
