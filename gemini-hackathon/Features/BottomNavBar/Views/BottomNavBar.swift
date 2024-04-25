//
//  BottomNavBar.swift
//  gemini-hackathon
//
//  Created by gulkaran s on 2024-04-21.
//

import SwiftUI

struct BottomNavBar: View {
    
    var body: some View {
        TabView {
            Welcome().tabItem {
                Image(systemName:"cup.and.saucer.fill")
                Text("Food Tracker")
            }
            Page2().tabItem {
                Image(systemName:"figure.outdoor.cycle")
                Text("Exercise")
            }
            Page3().tabItem {
                Image(systemName: "sun.horizon.fill")
                Text("Today")
            }
            Page4().tabItem {
                Image(systemName: "pills.fill")
                Text("Prescriptions")
            }
            Page5().tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
            }
        }
    }
    
}

struct Page1: View {
    var body: some View {
        Text("Page 1")
    }
}

struct Page2: View {
    var body: some View {
        Text("Page 2")
    }
}

struct Page3: View {
    var body: some View {
        Text("Page 3")
    }
}
struct Page4: View {
    var body: some View {
        Text("Page 4")
    }
}

struct Page5: View {
    var body: some View {
        Text("Page 5")
    }
}

#Preview {
    BottomNavBar()
}
