//
//  ClubDetailsView.swift
//  test
//
//  Created by fai Mogbel on 27/08/1444 AH.
//

import SwiftUI

struct ClubDetailsView: View {
    var body: some View {
        VStack{
            ZStack{
                Color(.white).edgesIgnoringSafeArea(.all)
                ScrollView{
                    Image("swim")
                        .resizable()
                        .aspectRatio(contentMode:.fit)
                        .edgesIgnoringSafeArea(.all)
            
                AboutView()
                .offset(y:-250)
                
                   
                }
                .edgesIgnoringSafeArea(.all)
            }
        }
    }
}
struct ClubDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ClubDetailsView()
    }
}
struct AboutView: View{
    var body: some View{
        VStack(alignment:.leading){
            Text("Aqua-Tots Swim school")
                .font(.title)
                .fontWeight(.bold)
            HStack(spacing:4){
                ForEach(0..<5){
                    item in Image(systemName: "star.fill").foregroundColor(.yellow)
                }
                Text("(4.9)")
                    .opacity(0.5)
                    .padding(.leading,8)
                Spacer()
            }
            Text("About")
                .fontWeight(.medium)
                .padding(.vertical,8)
            Text("We work together all year round to prevent drowning by teaching kids water safety skills and safe, confident swimmers for life.")
                .lineSpacing(8.0)
                .opacity(0.6)
            HStack(alignment:.top){
                VStack(alignment:.leading){
                    Text("Hours")
                        .fontWeight(.medium)
                        .padding(.bottom,4)
                    Text("Wednesday    12–9 PM")
                        .opacity(0.6)
                    Text("Thursday        12–9 PM")
                        .opacity(0.6)
                    Text("Friday              Closed")
                        .opacity(0.6)
                        .foregroundColor(.red)
                    Text("Saturday 11 AM – 7 PM")
                        .opacity(0.6)
                    Text("Sunday           12–9 PM")
                        .opacity(0.6)
                    Text("Monday          12–9 PM")
                        .opacity(0.6)
                    Text("Tuesday          12–9 PM")
                        .opacity(0.6)
                }
                VStack(alignment:.leading){
                    Text("Location")
                        .fontWeight(.medium)
                        .padding(.bottom,4)
                    Text("3945 Nawar Valley, Al Malqa Riyadh, Saudi Arabia 13521")
                        .opacity(0.6)
                }.frame(maxWidth:.infinity,alignment: .leading)
            }.padding(.vertical)
            HStack{
                VStack(alignment:.leading){
                    Text("Amenities")
                        .fontWeight(.medium)
                    HStack{
                        VStack{
                            ZStack{
                                Color(UIColor(named:"Greenfai")!)
                                    .frame(width:44,height: 44)
                                    .cornerRadius(10)
                                Image(systemName: "drop").foregroundColor(.white)
                                    .font(.system(size:30))
                                    .fontWeight(.bold)
                                
                            }
                            Text("Drinking water")
                                .fontWeight(.light)
                        }
                        VStack{
                            ZStack{
                                Color(UIColor(named:"Greenfai")!)
                                    .frame(width:44,height: 44)
                                    .cornerRadius(10)
                                Image(systemName: "humidity").foregroundColor(.white)
                                    .font(.system(size:30))
                                    .fontWeight(.bold)
                                
                            }
                            Text("Parking")
                                .fontWeight(.light)
                        }
                        VStack{
                            ZStack{
                                Color(UIColor(named:"Greenfai")!)
                                    .frame(width:44,height: 44)
                                    .cornerRadius(10)
                                Image(systemName: "parkingsign").foregroundColor(.white)
                                    .font(.system(size:25))
                                    .fontWeight(.bold)
                            }
                            Text("Washroom")
                                .fontWeight(.light)
                        }
                       
                    }
                   
                    DataView()
                }
            }
        }
        .padding()
        .padding(.top)
        .background(.white)
        .cornerRadius(40)
    }
}
struct DataView: View{
    @Environment(\.calendar) var calendar
    @State var dates: Set<DateComponents> = []
    @State private var Person1 = 0
    @State private var Person2 = 0
    var body: some View{
        VStack {
            
            
            HStack{
                Image(systemName: "calendar")
                    .font(.system(size:25))
                    .foregroundColor(Color(UIColor(named:"Greenfai")!))
                Text("Select Date ")
                    .font(.title3)
                    .fontWeight(.regular)
                    .padding(.vertical)
            }
            .padding(.leading,-190)
            
            MultiDatePicker("Choose your reservation", selection: $dates, in: Date.now...)
                .padding(.vertical, 101.367)
                .datePickerStyle(GraphicalDatePickerStyle()
                )
                .frame(maxHeight: 350)
            
            HStack{
                Image(systemName: "hourglass")
                    .font(.system(size:25))
                    .foregroundColor(Color(UIColor(named:"Greenfai")!))
                Text("Select Duration ")
                    .font(.title3)
                    .fontWeight(.regular)
                    .padding(.vertical)
            }   .padding(.leading,-190)
            VStack{
                HStack (spacing: 14){
                    
                    Button("30 Min") {}
                        .foregroundColor(.black)
                        .padding()
                        .clipShape(Capsule())
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.green, lineWidth: 2)
                        )
                    
                        .cornerRadius(8)
                    Button("45 Min") {}
                        .foregroundColor(.black)
                        .padding()
                        .clipShape(Capsule())
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.green, lineWidth: 2)
                        )
                    
                        .cornerRadius(8)
                    
                    
                    
                    
                    Button("60 Min") {}
                        .foregroundColor(.black)
                    
                        .padding()
                        .background(Color(UIColor(named:"OP")!))
                        .cornerRadius(8)
                    Button("90 Min") {}
                        .foregroundColor(.black)
                        .padding()
                        .clipShape(Capsule())
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.green, lineWidth: 2)
                        )
                    
                        .cornerRadius(8)
                    
                    
                    
                    
                    Button("120 Min") {}
                        .foregroundColor(.black)
                        .padding()
                        .clipShape(Capsule())
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.green, lineWidth: 2)
                        )
                    
                        .cornerRadius(8)
                    
                    
                    
                }
                
                
                
            }
            HStack{
                Image(systemName: "clock")
                    .font(.system(size:25))
                    .foregroundColor(Color(UIColor(named:"Greenfai")!))
                Text("Available Time ")
                    .font(.title3)
                    .fontWeight(.regular)
                    .padding(.vertical)
            }
            .padding(.leading,-190)
            HStack (spacing: 14){
                VStack {
                    Button("8:25 AM") {}
                        .foregroundColor(.black)
                    
                        .padding()
                        .background(Color(UIColor(named:"OP")!))
                        .cornerRadius(8)
                    Button("6:00 PM") {}
                        .foregroundColor(.black)
                        .padding()
                        .clipShape(Capsule())
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.green, lineWidth: 2)
                        )
                    
                        .cornerRadius(8)
                }
                
                VStack {
                    
                    Button("9:10 AM") {}
                        .foregroundColor(.black)
                        .padding()
                        .clipShape(Capsule())
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.green, lineWidth: 2)
                        )
                    
                        .cornerRadius(8)
                    Button("7:30 PM") {}
                        .foregroundColor(.black)
                        .padding()
                        .clipShape(Capsule())
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.green, lineWidth: 2)
                        )
                    
                        .cornerRadius(8)
                }
                
                VStack {
                    
                    Button("10:30 PM") {}
                        .foregroundColor(.black)
                        .padding()
                        .clipShape(Capsule())
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.green, lineWidth: 2)
                        )
                    
                        .cornerRadius(8)
                    
                    Button(" 3:15 PM") {}
                        .foregroundColor(.black)
                        .padding()
                        .clipShape(Capsule())
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.green, lineWidth: 2)
                        )
                    
                        .cornerRadius(8)
                    
                }
                
                
            }
           
            VStack(alignment:.center){
                Spacer()
                
                
                NavigationLink(destination: ViewBook()) {
                    Text("Book")
                    
                
                .padding()
                .background(.green)
                .foregroundColor(.white)
                }
                .font(.title)
                .cornerRadius(10)
                .fontWeight(.semibold)
                .frame(maxWidth: 200, maxHeight: 200)
               // .background(Color.white)
                //.cornerRadius(10)
                .shadow(radius: 8)
            
                
            }
        }
        
    }
}
//struct AmenitiesView:View{
//    var body: some View{
//No. of Players
//    }
//}
