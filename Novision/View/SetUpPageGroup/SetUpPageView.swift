//
//  HomePageView.swift
//  Novision
//
//  Created by Saaz Shaikh on 08/08/2023.
//

import SwiftUI

struct SetUpPage: View {
    struct CustomColor {
        static let fullYellow = Color("fullYellow")
        static let lightGray = Color("lightGrayWeAllDeserved")
        static let richRed = Color("richRed")
        static let navyBlue = Color("navyBlue")
        
    }
    
    @State var hour = 0
    @State private var shadowOpacity = 0.5
    @State private var isHomeScreenPresented = false
    @ObservedObject var novisionManager: NovisionManager
    
    var greeting: String {
        if hour >= 6 && hour <= 12 {
            return "Good Morning!"
        } else if hour >= 12 && hour <= 15 {
            return "Good Afternoon!"
        } else if hour >= 15 && hour <= 20 {
            return "Good Evening!"
        } else {
            return ["Hi", "Hello"].randomElement()!
        }
    }
    
    var body: some View {
        
        ZStack {
            Text(greeting)
                .offset(x: -50, y: -320)
                .bold()
                .foregroundColor(CustomColor.fullYellow)
                .padding()
                .shadow(radius: 25)
                .font(.largeTitle)
                .onAppear {
                    // Set the hour value here, for example
                    hour = Calendar.current.component(.hour, from: Date())
                }
            
            Rectangle()
                .frame(width: 370, height: 140)
                .cornerRadius(13)
                .foregroundColor(CustomColor.lightGray)
                .offset(y: -185)
            
            ReminderTimesView()
                .offset(y: -149)
            
            Rectangle()
                .frame(width: 370, height: 170)
                .cornerRadius(13)
                .foregroundColor(CustomColor.lightGray)
                .offset(y: -16)
            
            Text("dont give notifications when these apps are\n running ")
            
            Rectangle()
                .frame(width: 370, height: 140)
                .cornerRadius(13)
                .foregroundColor(CustomColor.lightGray)
                .offset(y: 155)
            
            Button {
                print("set up completed-- heading to main screen")
                isHomeScreenPresented = true
            }label: {
                Text("next                     ")
                    .bold()
                    .padding()
                    .foregroundColor(CustomColor.navyBlue)
                    .background(Color.white)
                    .cornerRadius(30)
            }
            .offset(y: 325)
            .shadow(color: CustomColor.richRed, radius: 30, x: 0, y: 2)
            .fullScreenCover(isPresented: $isHomeScreenPresented) {
                HomeScreenPageView()
            }
            
            
        }
        
        
    }
    
    struct HomePageView_Previews: PreviewProvider {
        static var previews: some View {
            SetUpPage(novisionManager: NovisionManager())
        }
    }
    
}
