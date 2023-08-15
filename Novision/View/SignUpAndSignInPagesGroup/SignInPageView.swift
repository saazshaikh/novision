//
//  SignInPageView.swift
//  Novision
//
//  Created by Saaz Shaikh on 13/08/2023.
//

//Still need to make the sign up thing actually work, with firebase
import SwiftUI

struct SignInPageView: View {
    struct CustomColor {
        static let fullYellow = Color("fullYellow")
        static let lightGray = Color("lightGrayWeAllDeserved")
        static let richRed = Color("richRed")
        static let navyBlue = Color("navyBlue")
        
    }
    
    //Errors: the enter email and enter password disappers and i can no longer type in the text field, this happens as soon as i add the continue with apple or continue with google button
    @ObservedObject var novisionManager: NovisionManager
    @State private var userEmail = ""
    @State private var userPassword = ""
    @State private var openSignUpPageInstead = false
    
    var body: some View {
        ZStack{
            
            Image("signInPageIllustration")
                .scaleEffect(0.85)
                .offset(x: -5, y: -225)
            
            Button {
                print("go to sign in page instead")
                openSignUpPageInstead = true
            } label: {
                Text("**Sign in** instead?")
                    .underline()
                    .foregroundColor(CustomColor.fullYellow)
                    .shadow(radius: 24)
            }.fullScreenCover(isPresented: $openSignUpPageInstead) {SignUpPageView(novisionManager: NovisionManager())}.offset(y: 375)
            
            ZStack{
                ContinueWithWhatView(novisionManager: NovisionManager())
                    .offset(y: 145)
                
                Text("**Sign in**")
                    .font(.title)
                    .offset(y: -140)
                
                Rectangle()
                    .cornerRadius(8)
                    .frame(width: 360, height: 38)
                    .foregroundColor(CustomColor.lightGray)
                    .offset(y: -75)
                
                TextField("Enter email", text: $userEmail)
                    .padding()
                    .offset(x: 400, y: -75)
                
                Rectangle()
                    .cornerRadius(8)
                    .frame(width: 360, height: 38)
                    .foregroundColor(CustomColor.lightGray)
                    .offset(y: -27)
                
                TextField("Enter password", text: $userPassword)
                    .padding()
                    .offset(x: 400, y: -27)
                
                Button {
                    print("Completely signed in with email and password")
                } label: {
                    Text("Let's Go!                                        ")
                        .foregroundColor(.white)
                        .padding(13)
                }
                .background(CustomColor.navyBlue)
                .cornerRadius(25)
                .offset(y: 40)
                
                Text("                                       or                                      ")
                    .offset(y: 90)
                
                Rectangle ()
                    .frame (width: 160, height: 1)
                    .offset(x: -95,y: 91)
                
                Rectangle ()
                    .frame (width: 159, height: 1)
                    .offset(x: 99,y: 91)
                
            }.offset(y: 90)
            
            
        }
    }
}

struct SignInPageView_Previews: PreviewProvider {
    static var previews: some View {
        SignInPageView(novisionManager: NovisionManager())
    }
}
