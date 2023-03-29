//
//  CreateMatch.swift
//  test
//
//  Created by fai Mogbel on 29/08/1444 AH.
//

import SwiftUI

struct CreateMatch: View {
    var body: some View {
        VStack{
            ZStack{
                Color(.white).edgesIgnoringSafeArea(.all)
                ScrollView{
                    Image("ball")
                        .resizable()
                        .aspectRatio(contentMode:.fit)
                        .edgesIgnoringSafeArea(.all)
            
                DescriptionView()
                .offset(y:-50)
                
                   
                }
                .edgesIgnoringSafeArea(.all)
            }
        }
}
}

struct CreateMatch_Previews: PreviewProvider {
    static var previews: some View {
        CreateMatch()
    }
}
struct DescriptionView: View{
    var body: some View{
        VStack(alignment:.leading){
            Text("Mharah football field")
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
            Text("Description")
                .fontWeight(.medium)
                .padding(.vertical,8)
            Text("A sports stadium in Al-Malqa district, in front of Al-Muhanna Mosque, with a grassy floor.")
                .lineSpacing(8.0)
                .opacity(0.6)
            Spacer()
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
                       
                    }
                   
                    DataView1()
                }
            }
        }
        .padding()
        .padding(.top)
        .background(.white)
        .cornerRadius(40)
    }
}
struct DataView1: View{
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
            
            HStack{
                Image(systemName: "person.badge.plus")
                    .font(.system(size:25))
                    .foregroundColor(Color(UIColor(named:"Greenfai")!))
                Text("No. of Players")
                    .font(.title3)
                    .fontWeight(.regular)
                    .padding(.vertical)
            }
            .padding(.leading,-190)
            
            Stepper(value: $Person1, in: 0...20) {
                
                Text("Team 1:   \(Person1)")
                    .font(.title3)
                    .fontWeight(.medium)
                
            }
            
            Stepper(value: $Person2, in: 0...20) {
                
                Text("Team 2:   \(Person2)")
                    .font(.title3)
                    .fontWeight(.medium)
                
            }
            
            
            VStack{
                HStack{
                    Image(systemName: "person.2.circle")
                        .font(.system(size:25))
                        .foregroundColor(Color(UIColor(named:"Greenfai")!))
                    Text("Court for")
                        .font(.title3)
                        .fontWeight(.regular)
                        .padding(.vertical)
                    
                    
                }.padding(.leading,-190)
                HStack{
                    Button("Male") {}
                        .foregroundColor(.black)
                    
                        .padding()
                        .background(Color(UIColor(named:"OP")!))
                        .cornerRadius(8)
                    Button("Female") {}
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
           
        }
        VStack(){
        
            
            
            NavigationLink(destination: ViewBook()) {
                Text("Create")
                
            
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
        
            
        }.padding(.all,80)
        
       }
        
    }
//struct AmenitiesView:View{
//    var body: some View{
//No. of Players
//    }
//}
