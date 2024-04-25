//
//  Questionaire.swift
//  gemini-hackathon
//
//  Created by gulkaran s on 2024-04-24.
//

import SwiftUI

struct Questionaire: View {
    
    @State private var breakfastTime = Calendar.current.date(bySettingHour: 8, minute: 0, second: 0, of: Date()) ?? Date()
    @State private var lunchTime = Calendar.current.date(bySettingHour: 12, minute: 0, second: 0, of: Date()) ?? Date()
    @State private var dinnerTime = Calendar.current.date(bySettingHour: 18, minute: 0, second: 0, of: Date()) ?? Date()

    
    var body: some View {
        
        NavigationView {
            VStack {
                VStack(alignment: .leading) {
                    Text("Reminder Times")
                        .font(.title)
                        .bold()
                        .padding(.bottom, 3)
                    Text("Set your meal times here. We'll send you a reminder near these times to snap a picture of your meal.")
                }.padding()
                
                HStack {
                    VStack(alignment: .leading, spacing: 15) {
                        HStack {
                            Image(systemName: "cup.and.saucer")
                            Text("Breakfast:")
                                .font(.title2)
                        }
                        
                        HStack {
                            Image(systemName: "takeoutbag.and.cup.and.straw")
                            Text("Lunch:")
                                .font(.title2)
                        }
                        
                        HStack {
                            Image(systemName: "wineglass")
                            Text("Dinner:")
                                .font(.title2)
                        }
                    }
                    .padding(.trailing, 50)
                    
                    VStack(alignment: .trailing) {
                        DatePicker("", selection: $breakfastTime, displayedComponents: .hourAndMinute)
                            .labelsHidden()
                        
                        DatePicker("", selection: $lunchTime, displayedComponents: .hourAndMinute)
                            .labelsHidden()
                        
                        DatePicker("", selection: $dinnerTime, displayedComponents: .hourAndMinute)
                            .labelsHidden()
                    }
                }
                
                NavigationLink(destination: Next().navigationBarHidden(true)) {
                        Text("Done")
                    .padding(EdgeInsets(top: 5, leading: 50, bottom: 5, trailing: 50))

                }
                
                    .buttonStyle(.borderedProminent)
                    .tint(.pink)
                    .foregroundColor(.white)
                    .buttonBorderShape(.capsule)
                    .padding()
            }
        }
        
        
        
        
    }
}

#Preview {
    Questionaire()
}

struct Next: View {
    var body: some View {
        Text("home page")
    }
}
