//
//  GoBackToSignUpPageView.swift
//  Novision
//
//  Created by Saaz Shaikh on 14/08/2023.
//

import SwiftUI

struct GoBackToSignUpPageView: View {
    @State private var openSignUpPageInstead = false
    var body: some View {
        ZStack{
            Button {
                print("go to sign up page instead")
                openSignUpPageInstead = true
            } label: {
                Text("**Sign up** instead")
            }.fullScreenCover(isPresented: $openSignUpPageInstead) {
                SignUpPageView(novisionManager: NovisionManager())
            }
        }
    }
    
    struct GoBackToSignUpPageView_Previews: PreviewProvider {
        static var previews: some View {
            GoBackToSignUpPageView()
        }
    }
}
