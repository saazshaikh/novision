//
//  SignUpPageView.swift
//  Novision
//
//  Created by Saaz Shaikh on 13/08/2023.
//

//import SwiftUI
//
//struct SignUpPageView: View {
//    struct CustomColor {
//        static let fullYellow = Color("fullYellow")
//        static let lightGray = Color("lightGrayWeAllDeserved")
//        static let richRed = Color("richRed")
//        static let navyBlue = Color("navyBlue")
//
//    }
//
//    @ObservedObject var novisionManager: NovisionManager
//    @State private var userEmail = ""
//    @State private var userPassword = ""
//    @State private var openSignInPageInstead = false
//
//    var body: some View {
//        ZStack{
//
//            Image("signUpPageIllustration")
//                .offset(x: -9, y: -225)
//
//            Button {
//                print("go to sign in page instead")
//                openSignInPageInstead = true
//            } label: {
//                Text("**Sign in** instead?")
//                    .underline()
//                    .foregroundColor(CustomColor.fullYellow)
//                    .shadow(radius: 24)
//            }.fullScreenCover(isPresented: $openSignInPageInstead) {SignInPageView(novisionManager: NovisionManager())}.offset(y: 375)
//
//
//                ZStack{
//                    ContinueWithWhatView(novisionManager: NovisionManager())
//                        .offset(y: 145)
//
//                    Text("**Sign up**")
//                        .font(.title)
//                        .offset(y: -140)
//
//                    Rectangle()
//                        .cornerRadius(8)
//                        .frame(width: 360, height: 38)
//                        .foregroundColor(CustomColor.lightGray)
//                        .offset(y: -75)
//
//                    TextField("Enter email", text: $userEmail)
//                        .padding()
//                        .offset(x: 10, y: -75)
//
//                    Rectangle()
//                        .cornerRadius(8)
//                        .frame(width: 360, height: 38)
//                        .foregroundColor(CustomColor.lightGray)
//                        .offset(y: -27)
//
//                    TextField("Enter password", text: $userPassword)
//                        .padding()
//                        .offset(x: 10, y: -27)
//
//                    Button {
//                        print("Completely signed in with email and password")
//                    } label: {
//                        Text("Let's Go!                                        ")
//                            .foregroundColor(.white)
//                            .padding(13)
//                    }
//                    .background(CustomColor.navyBlue)
//                    .cornerRadius(25)
//                    .offset(y: 40)
//
//                    Text("                                       or                                      ")
//                        .offset(y: 90)
//
//                    Rectangle ()
//                        .frame (width: 160, height: 1)
//                        .offset(x: -95,y: 91)
//
//                    Rectangle ()
//                        .frame (width: 159, height: 1)
//                        .offset(x: 99,y: 91)
//
//                    //                                Button {
//                    //                                    print("go to sign in page instead")
//                    //                                    openSignInPageInstead = true
//                    //                                } label: {
//                    //                                    Text("**Sign in** instead?")
//                    //                                        .underline()
//                    //                                        .foregroundColor(CustomColor.fullYellow)
//                    //                                        .shadow(radius: 24)
//                    //                                }.fullScreenCover(isPresented: $openSignInPageInstead) {
//                    //                    SignInPageView(novisionManager: NovisionManager())
//                    //                }.offset(y: 275)
//                }.offset(y: 90)
//
//            }
//            .offset(y: -20)
//        }
//    }
//
//    struct SignUpPageView_Previews: PreviewProvider {
//        static var previews: some View {
//            SignUpPageView(novisionManager: NovisionManager())
//        }
//    }
