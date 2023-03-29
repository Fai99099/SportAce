//
//  ViewBook.swift
//  test
//
//  Created by fai Mogbel on 28/08/1444 AH.
//

import SwiftUI

struct ViewBook: View {
    var body: some View {
        Form{
         
            
            VStack{
                
                Image("ft1")
                    .resizable()
                    .frame(width: 300,height: 200)
                
                Text("Maharah football field")
                    .font(.title)
                
                List{
                    Text("Booked for April ")
                    HStack{
                        Text("Team 1:")
                        Image("p1")
                            .resizable()
                            .frame(width: 30,height: 30)
                        Image("p2")
                            .resizable()
                            .frame(width: 30,height: 30)
                        Image("p3")
                            .resizable()
                            .frame(width: 30,height: 30)
                        Image("p4")
                            .resizable()
                            .frame(width: 30,height: 30)
                        ZStack{
                            Image("p11")
                                .resizable()
                                .frame(width: 30,height: 30)
                            Text("+6")
                        }

                    } .padding(.trailing, -90.0)
                  HStack{
                        Text("Team 2:")
                        Image("p7")
                            .resizable()
                            .frame(width: 30,height: 30)
                        Image("p8")
                            .resizable()
                            .frame(width: 30,height: 30)
                        Image("p9")
                            .resizable()
                            .frame(width: 30,height: 30)
                        Image("p10")
                            .resizable()
                            .frame(width: 30,height: 30)
                        ZStack{
                            Image("p12")
                                .resizable()
                                .frame(width: 30,height: 30)
                            Text("+6")
                        }

                    } .padding(.trailing, -90.0)
                }.padding(.leading, -150.0)

               
                List{
                    Text("\nGroup Name: Alhilal            ")
                        .padding(.leading, -100.0)

                    Divider().frame(width: 300).foregroundColor(.black)
        
                }
                HStack{
                    VStack(alignment: .leading){
                        
                        Text("Date:")
                        Text("Time:")
                        Text("Duration:")
                        Text("court:")
                        Text("Sport:")
                        Text("Field type:")
                        Text("Number of player:\t")
                        Text("Court for:")
                            
                        Text("Cost:")
                        
                    }
                    .font(.body)
                    .padding(.leading, -30.0)
                   
                    VStack(alignment: .leading){

                        Text("23 April 2023")
                        Text("8:30 pm")
                        Text("90 mins")
                        Text("Maharah football field")
                        Text("Football")
                        Text("Grass")
                        Text("21")
                        Text("Male")
                        Text("150 SAR")
                        
                    }
                    .padding(.trailing, -40.0)
                    
                }
              
          //  Text(String("\(V)"))
                
                Text("\n")
                HStack{
                    Text("\t\t\t")
                    Text("\t\t\t")
                    Text("\t\t")
                    Image(systemName: "xmark.circle")
                        .foregroundColor(.red)
                    Image(systemName: "text.bubble")
                      
                    Image(systemName: "map")
                        
                }
             
                

            }
            
            
        }.background(Color.white.ignoresSafeArea())
            .scrollContentBackground(.hidden)
            .navigationTitle("View your Book")
            .navigationBarTitleDisplayMode(.inline)
      
    }
}

struct ViewBook_Previews: PreviewProvider {
    static var previews: some View {
        ViewBook()
    }
}
