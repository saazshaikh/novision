//
//  ReminderRowView.swift
//  Novision
//
//  Created by Saaz Shaikh on 08/08/2023.
//

import SwiftUI

struct ReminderTimesView: View {
    struct CustomColor {
        static let navyBlue = Color("navyBlue")
    }
    
    @State private var reminderRowViewShow = false
    @State private var startTime = Date()
    @State private var endTime = Date()
    
    var body: some View {
        VStack{
            
            ZStack{
                Text ("**Reminders:**")
                    .foregroundColor(CustomColor.navyBlue)
                    .font(.title)
                    .offset(x: -82 ,y:-80)
                Text ("Select time periods for your flashcard reminders.")
                    .foregroundColor(.gray)
                    .font(.footnote)
                    .offset(x: -8 ,y:-55)
                
                HStack{
                    DatePicker("Start time:", selection: $startTime, displayedComponents: .hourAndMinute)
                        .padding()
                    DatePicker("End time:", selection: $endTime, displayedComponents: .hourAndMinute)
                        .padding()
                }.padding(25)
            }
        }
    }
}

struct ReminderRowView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderTimesView()
    }
}
