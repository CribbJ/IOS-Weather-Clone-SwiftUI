//
//  TabBarView.swift
//  IOSWeatherClone
//
//  Created by James Cribb on 19/02/2025.
//

import SwiftUI

struct TabBarView: View {
    @State private var currentPage = 0
    var body: some View {
        TabView {
            
            // Map
            VStack {
                Image(systemName: "map")
                    .foregroundColor(Color.white)
                    .font(.system(size: 30))
            }
            .tabItem {
                Image(systemName: "map")
            }
            
            
            // Page View
            VStack {
                TabView(selection: $currentPage) {
                    VStack {
                        Text("Location 1")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    .tag(0)

                    VStack {
                        Text("Location 2")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    .tag(1)

                    VStack {
                        Text("Location 3")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    .tag(2)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .frame(height: 200) // Adjust the frame size as necessary

                // Dots (Page Indicator)
                HStack {
                    ForEach(0..<3) { index in
                        Circle()
                            .fill(currentPage == index ? Color.white : Color.gray)
                            .frame(width: 10, height: 10)
                    }
                }
            }
            .tabItem {
                Image(systemName: "location.fill") // Use a relevant icon
            }
            
            // Navigation between Locations
            VStack {
                Image(systemName: "list.bullet")
                    .foregroundColor(Color.white)
                    .font(.system(size: 30))
            }
            .tabItem {
                Image(systemName: "list.bullet") // Tab icon
            }
            
        }
    }
}

#Preview {
    TabBarView()
}
