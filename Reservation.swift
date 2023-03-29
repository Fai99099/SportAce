//
//  Reservation.swift
//  SPORT
//
//  Created by  نهى العريفي on 27/08/1444 AH.
//

import SwiftUI

struct MATCHES: Identifiable {
    var id = UUID()
    var image: String
    var Sport: String
    var Date: String
}




struct ROWS: View {
    var DATA: MATCHES
    var body: some View {
        VStack(){
          
            HStack {
                Image(DATA.image)
                    .resizable()
                    .frame(width: 120,height: 90)
                
                VStack{
                    
                    Text(DATA.Sport)
                        .font(.title2)
                        .fontWeight(.medium)
                        .frame(width: 103, alignment: .leading)
                        
                    Text(DATA.Date)
                        .font(.subheadline)
                        .frame(width: 100, alignment: .leading)
                    
                }
               
            NavigationLink(destination: ViewBook() ) {
                Text("")
                    .font(.caption)
                .fontWeight(.heavy) }
               .buttonStyle(.automatic)
               .padding(.leading, 52.0)
                

            }
      
           
        }
        
        
        
    }
}




struct Reservation: View {
    
    
    let UP_DATA: [MATCHES] = [
        MATCHES(image: "F1", Sport: "Foot Ball", Date:"21 April"),
        MATCHES(image: "f2", Sport:"Padel", Date:"1 March"),
        MATCHES(image: "BB", Sport:"Baskit Ball", Date:"1 Augest"),
        MATCHES(image: "f3", Sport: "Foot Ball", Date:"21 April"),
        MATCHES(image: "f3", Sport: "Foot Ball", Date:"21 April"),
        MATCHES(image: "f3", Sport: "Foot Ball", Date:"21 April")
    ]
    
    
    let UC_DATA: [MATCHES] = [
        MATCHES(image: "BB", Sport: "Padel", Date:"21 April"),
        MATCHES(image: "f3", Sport: "Foot Ball", Date:"21 April"),
        MATCHES(image: "F1", Sport: "Foot Ball", Date:"21 April"),
        MATCHES(image: "f3", Sport: "Foot Ball", Date:"21 April")]
    
    
    
    var body: some View {
        
            NavigationView{
                VStack(spacing: 10 ){
                    
                   
                    Spacer()
                        .navigationTitle("Booked")
                    Divider()
                    List {
                        
                        Section(header: Text("Under Progress :")
                            .font(.title)
                            .fontWeight(.regular)
                            .foregroundColor(Color.black)
                            .shadow(radius: 0)
                            .background(Color.gray.opacity(0.2)))
                            
                        {
                            
                            ForEach(UP_DATA){ DATA in ROWS (DATA: DATA)
                                    .listRowSeparator(.hidden)
                                
                            }.listRowBackground(Color.white)
                            
                        }.padding()
                        
                    }
                    .listStyle(.plain)
                    .shadow(color: Color.gray, radius: 1)
                    .background(.white)
                  .scrollContentBackground(.hidden)
                   // .frame(height: <#T##CGFloat?#>)
                    
                    
                    List {
                        Section(header: Text("Upcoming Matches :")
                            .font(.title)
                            .fontWeight(.regular)
                            .foregroundColor(Color.black)
                            .shadow(radius: 0)
                            .background(Color.gray.opacity(0.2)))
                        {
                            
                            ForEach(UC_DATA){ DATA in ROWS (DATA: DATA)
                                    .listRowSeparator(.hidden)
                                
                            }.listRowBackground(Color.white)
                            
                        }.padding()
                        
                    }
                    .listStyle(.plain)
                    .shadow(color: Color.gray, radius: 1)
                    .background(.white)
                    .scrollContentBackground(.hidden)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                  
                    
                    
         
                    Text("\n")
                    
                         
                }.padding(.all, -20.0)
                 
                
            }//.padding()
          
        
        
    }
    
    
   
    
}



    struct Reservation_Previews: PreviewProvider {
        static var previews: some View {
            Reservation()
        }
    }
    
