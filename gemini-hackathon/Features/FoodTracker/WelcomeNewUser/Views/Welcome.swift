//
//  Welcome.swift
//  gemini-hackathon
//
//  Created by gulkaran s on 2024-04-24.
//

import SwiftUI

struct Welcome: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                VStack {
                    Text("Welcome to your personalized food tracker")
                        .font(.title)
                        .bold()
                    Text("View your calories, nutrients, and food goals all in one place.")
                        .padding(.bottom, 40)
                        .padding(.leading, 8)
                        .padding(.top, 1)
                    Image("welcome")
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(CGSize(width: 1.2, height: 1.2))
                }
                .padding()
                .padding(.bottom, 70)
                
                NavigationLink(destination: Questionaire()) {
                
                    HStack {
                        Text("Get Started")
                        Image(systemName:"arrow.right")
                    }
                    .padding(EdgeInsets(top: 5, leading: 50, bottom: 5, trailing: 50))

                }
                    .buttonStyle(.borderedProminent)
                    .tint(.pink)
                    .foregroundColor(.white)
                    .buttonBorderShape(.capsule)
                    .padding(.top, 600)
            }
        }
    }
}

#Preview {
    Welcome()
}
