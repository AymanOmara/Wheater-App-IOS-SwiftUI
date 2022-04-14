//
//  ContentView.swift
//  TestUI
//
//  Created by Ayman Omara on 11/04/2022.
//

import SwiftUI

struct MainView: View {

    var body: some View {
        
        NavigationView{
            
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.blue,.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
            
                VStack{
                    Text("Cairo ,Egypt")
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .foregroundColor(.white)
                        .padding()
                    
                    VStack(spacing: 10){
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 180, height: 180)
                        
                        CustomeText(text: "77°", fontSize: 70)

                    }
                    .padding(.bottom,40)
                    
                    HStack(spacing:20){
                        DayTempreture(day: "TUE", imageName: "cloud.hail.fill", tempreture: 80)
                        
                        DayTempreture(day: "TUE", imageName: "moon.stars.fill", tempreture: 80)

                        DayTempreture(day: "TUE", imageName: "cloud.moon.bolt.fill", tempreture: 80)
                        
                        DayTempreture(day: "TUE", imageName: "snowflake", tempreture: 80)
                        
                        DayTempreture(day: "TUE", imageName: "wind.snow", tempreture: 80)
                        
                    }
                    Spacer()
                    
                        VStack(alignment: .center){
                            NavigationLink(destination: {
                                SecondView(text: " my text")
                            }, label: {
                                Text("move to next")
                            })

//                            Button {
//                                print("did press")
//                            } label: {
//                                Text("Click me")
//                                    .frame(width: 280, height: 50, alignment: .center)
//                                    .background(Color.white)
//                                    .cornerRadius(10)
//                            }
                            Spacer()

                    }
                }
            }
            .navigationTitle("wheater")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()

    }
}

struct DayTempreture:View{
    var day:String
    var imageName:String
    var tempreture:Int
    var body: some View {
        VStack(alignment: .center){
           CustomeText(text: day, fontSize: 20)
            Image(systemName: imageName)
                .renderingMode(.original)

            Text("\(tempreture)°")
            
        }
    }
    

}
struct CustomeText:View{
    var text:String
    
    var fontSize:CGFloat
    
    
    var body: some View{
        Text(text)
            .font(.system(size: fontSize, weight: .medium, design: .default))
            .foregroundColor(.white)

    }
}

