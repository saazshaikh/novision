//
//  ContinueWithWhatView.swift
//  Novision
//
//  Created by Saaz Shaikh on 13/08/2023.
//

import SwiftUI

struct ContinueWithWhatView: View {
    @ObservedObject var novisionManager: NovisionManager
    
    var body: some View {
        ZStack{
            Button {
                print("Completely continued with google")
            } label:  {
                Image("continueGoogle")
            }//.background(Color.red)
             .scaleEffect(0.23)
             .offset(y: 55)
            
            Button {
                print("Completely continued with apple")
            } label:  {
                Image("continueApple")
            }//.background(Color.red)
             .scaleEffect(0.23)
            
            
        }
    }
}

struct ContinueWithWhatView_Previews: PreviewProvider {
    static var previews: some View {
        ContinueWithWhatView(novisionManager: NovisionManager())
    }
}
