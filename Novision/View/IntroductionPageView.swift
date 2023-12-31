//
//  IntroductionPageView.swift
//  Novision
//
//  Created by Saaz Shaikh on 08/08/2023.
//

import SwiftUI

struct IntroductionPageView: View {
    @ObservedObject var novisionManager: NovisionManager
    @State private var isSetUpPagePresented = false
    @State private var isSignUpPagePresented = false
    @State private var isSignInPagePresented = false
    
    struct CustomColor {
        static let navyBlue = Color("navyBlue")
    }
    
    @State private var displaySheet = false
    
    var body: some View {
        ZStack {
            Image("background")
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    print("sheet shown")
                }
            
            VStack {
                Text("**Novision**")
                    .font(.system(size: 65))
                    .foregroundColor(CustomColor.navyBlue)
                    .offset(y: 15)
                    .shadow(radius: 10)
                
                Button(action: {
                    print("show sheet")
                    displaySheet = true
                }) {
                    Text("continue           ")
                        .padding()
                        .foregroundColor(CustomColor.navyBlue)
                        .background(Color.white)
                        .cornerRadius(30)
                }
                .offset(y: 300)
                .shadow(radius: 7)
                .sheet(isPresented: $displaySheet) {
                    Text ("**Welcome to Novision!**")
                        .font(.title)
                        .underline()
                    Text("Novision is an app for you and your friends to use together, to help each other study.\n\nTogether, you and your friends can create notes, which will pop up on your phone, as either interactive reminders, or just reminders with notes, so you see them more often and familiarize yourself with them.\n\nWhen you read your notifications, you can interact with them and indicate how confident you feel with the note. Depending on your confidence level, the note will appear either more often or less often.")
                        .padding()
                        .font(.system(size: 20))
                        .offset(y: 33)
                    
                    Button {
                        print("sign uped")
                        isSignUpPagePresented = true
                    } label: {
                        Text("Sign up 🫡         ")
                            .padding(10)
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                    }.background(CustomColor.navyBlue)
                     .cornerRadius(30)
                     .shadow(radius: 7)
                     .offset(x: -90, y: 90)
                     .fullScreenCover(isPresented: $isSignUpPagePresented) {
                         SignUpPageView(novisionManager: NovisionManager())
                     }
                    
                    Button {
                        print("logged in")
                        isSignInPagePresented = true
                    } label: {
                        Text("Sign in 😆           ")
                            .padding(10)
                            .foregroundColor(CustomColor.navyBlue)
                            .font(.system(size: 20))
                    }.background(.white)
                     .cornerRadius(30)
                     .shadow(radius: 7)
                     .offset(x: 90, y: 37)
                     .fullScreenCover(isPresented: $isSignInPagePresented) {
                         SignInPageView(novisionManager: NovisionManager())
                     }
                    
                    Button {
                        print ("skipped sign in")
                        isSetUpPagePresented = true
                    } label: {
                        Text("Skip?")
                            .padding(7)
                            .underline()
                            .foregroundColor(CustomColor.navyBlue)
                    }.background(.white)
                     .offset(x: 150, y: -640)
                     .fullScreenCover(isPresented: $isSetUpPagePresented) {
                         SetUpPage(novisionManager: NovisionManager())
                     }
                    

                }
            }
        }
    }
}

struct IntroductionPageView_Previews: PreviewProvider {
    static var previews: some View {
        IntroductionPageView(novisionManager: NovisionManager())
    }
}
