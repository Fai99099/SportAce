


import SwiftUI


struct FillterView: View {
    

    @State var counter = 0
    @State var HP = false
    @State var LP = false
    @State var MC = false
    @State var HR = false
    @State var ChoosenOne = ""
    @State var FootBall = false
    @State var HourseRading = false
    @State var Swimming = false
    @State var Padel = false
    
    @State var Female = false
    @State var Male = false
    @State var Kids = false
    
  
    func Count(_: Int)->Int {
        
        if counter >= 1 {
            counter -= 1 }
        else{counter = counter}
        return counter }

     func Choosen(_: String) -> String{
        
         if HP == true {ChoosenOne = "Higher Price"; HP = false}
        if LP == true {ChoosenOne = "Lower Price"; LP = false}
        if MC == true {ChoosenOne = "Most Common"; MC = false}
         if HR == true {ChoosenOne = "Highley Rated"; HR = false}
         return ChoosenOne
    }


    var body: some View {
     
            
            
            VStack(spacing:20){
                Divider()
                    .navigationTitle("Filter")
                
                
                
                VStack(){
                    HStack(){
                        Text("Sort by")
                            .padding(.horizontal, -10)
                            .fontWeight(.bold)
                            .font(.title2)
                        Spacer()
                        
                    }
                    .padding(.horizontal)
                    
                    
                    ZStack{
                        
                        Spacer()
                        Menu("111111111111111111111111111111111111111111"){
                            
                            Button (action: {self.HR = true; Choosen(ChoosenOne)}, label: { Text("Highley Rated") })
                            Button (action: {self.MC = true; Choosen(ChoosenOne)}, label: { Text("Most Common") })
                            Button (action: {self.HP = true; Choosen(ChoosenOne)}, label: { Text("Higher Price") })
                            Button (action: {self.LP = true; Choosen(ChoosenOne)}, label: { Text("Lower Price")
                                
                            })
                            
                        }
                        
                        .padding(.horizontal ,22)
                        .frame(maxWidth: .infinity, maxHeight: 44)
                        .background(Color.white)
                        .cornerRadius(5)
                        .shadow(radius: 1)
                        .foregroundColor(Color("OPA"))
                        
                        
                        HStack(){
                            Text("\(ChoosenOne)")
                                .foregroundColor(Color.black)
                                .padding(-10)
                                .padding(.horizontal)
                            
                            
                            
                            Spacer()
                            Image(systemName: "chevron.down")
                                .foregroundColor(Color.black)
                                .padding([.top, .bottom, .trailing], 19.0)
                        }}
                    HStack(){
                        Text("How many clubs")
                            .padding(.horizontal, -10)
                            .fontWeight(.bold)
                            .font(.title2)
                            .padding(.trailing)
                        Spacer()
                        
                        Button (action: {Count(counter)}, label: { Text("-")
                                .font(.largeTitle)
                            .foregroundColor(Color.green) })
                        
                        Spacer()
                        
                        Text("\(counter)")
                            .font(.largeTitle)
                        
                        Spacer()
                        
                        Button (action: {self.counter += 1}, label: { Text("+")
                                .font(.largeTitle)
                            .foregroundColor(Color.green) })
                    }.padding()
                    
                    
                    
                    Text("Sport")
                        .padding(.trailing, 290.0)
                        .fontWeight(.bold)
                        .font(.title2)
                    
                    
                    VStack(){
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
                        }
                        HStack{
                            
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
                        
                    }
                   
                    
                    
                    
                    Text("Categories")
                        .padding(.trailing, 232.0)
                        .fontWeight(.bold)
                        .font(.title2)
                    
                    ScrollView(.horizontal){
                        
                        
                        
                        HStack(){
                            
                            
                            
                            
                            Spacer()
                            
                            ZStack(){
                                Image("hairstyle_480")
                                    .resizable()
                                    .clipShape( Circle() )
                                    .frame(width: 50.0, height: 50, alignment: .center)
                                    .clipShape(Capsule())
                                    .overlay(
                                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color.green, lineWidth: 2)
                                            )
                                
                                        .cornerRadius(25)

                                Toggle("fffff", isOn: $Female)
                                    .font(.title)
                                    .foregroundColor(Color("OPA"))
                                    .toggleStyle(.button)
                                    .tint(.green)
                                .font(.title3)
                                
                            }
                            
                            
                            
                            ZStack(){
                                
                                Image("man_480")
                                    .resizable()
                                    .clipShape( Circle() )
                                    .frame(width: 50.0, height: 50, alignment: .center)
                                    .clipShape(Capsule())
                                    .overlay(
                                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color.green, lineWidth: 2)
                                            )
                                
                                        .cornerRadius(25)

                                
                                Toggle("fffff",isOn: $Male)
                                    .font(.title)
                                    .foregroundColor(Color("OPA"))
                                    .toggleStyle(.button)
                                    .tint(.green)
                                    .font(.title3)
                                Spacer()
                                
                                
                            }
                            ZStack(){
                                Image("children_480")
                                    .resizable()
                                    .clipShape( Circle())
                                    .frame(width: 50.0, height: 50, alignment: .center)
                                    .clipShape(Capsule())
                                    .overlay(
                                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color.green, lineWidth: 2)
                                            )
                                
                                        .cornerRadius(25)

                                
                                Toggle("fffff", isOn: $Kids)
                                    .font(.title)
                                    .foregroundColor(Color("OPA"))
                                    .toggleStyle(.button)
                                    .tint(.green)
                                    .font(.title3)
                                
                            }
                            
                        }
                        //.padding(.leading, -135.0)
                        
                        
                        
                    }
                    
                    
                    
        
                    VStack(alignment:.center){
                       
                        Spacer()
                        
                        
                        NavigationLink(destination: DiscoverClubs()) {
                            Text("Appley")
                            
                        }
                        .padding()
                        .background(.green)
                        .foregroundColor(.white)
                        .font(.title)
                        .cornerRadius(10)
                        .fontWeight(.semibold)
                        .frame(maxWidth: 200, maxHeight: 200)
                       // .background(Color.white)
                        //.cornerRadius(10)
                        .shadow(radius: 8)
                        
                        
                    }
                    
                }.padding()
                
                
                
            }
        }
            
            
        }
        

    
    
    
    


struct FillterView_Previews: PreviewProvider {
    static var previews: some View {
        FillterView()
    }
}
