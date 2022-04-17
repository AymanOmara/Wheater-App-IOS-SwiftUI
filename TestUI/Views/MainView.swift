//
//  ContentView.swift
//  TestUI
//
//  Created by Ayman Omara on 11/04/2022.
//

import SwiftUI

struct MainView: View {
    @State private var isNight = false
    
    var body: some View {
        
        
        
        ZStack{
            BackGroundView(isNight: $isNight)
            
            
            VStack{
                Text("Cairo ,Egypt")
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 10){
                    Image(systemName: isNight ? "moon.stars.fill" :"cloud.sun.fill")
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
                    
                    
                    
                    DayTempreture(day: "TUE", imageName: "snowflake", tempreture: 80)
                    
                    DayTempreture(day: "TUE", imageName: "snowflake", tempreture: 50)
                    
                    DayTempreture(day: "TUE", imageName: "wind.snow", tempreture: 80)
                    
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(text: "change day night mode", backbroundColor: .white, textColor: .blue)
                }
                Spacer()
                
                
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
        
    }
}

struct BackGroundView:View{
    
    @Binding var isNight:Bool
    
    var body: some View{
        LinearGradient(gradient:
                        Gradient(colors: [
                            isNight ? .black : .blue
                            ,isNight ? .gray : Color("lighblue")
                        ]), startPoint: .topLeading, endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
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
                .padding(.all , 10)
    
            
            CustomeText(text: "\(tempreture)°", fontSize: 20)
        }
        
    }
}
struct WeatherButton:View{
    var text:String
    var backbroundColor,textColor:Color
    var body: some View{
        Text(text)
            .font(.system(size: 20, weight: .medium, design: .default)
            )
            .frame(width: 250, height: 50)
            .foregroundColor(textColor)
            .background(backbroundColor)
            .cornerRadius(10)
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

