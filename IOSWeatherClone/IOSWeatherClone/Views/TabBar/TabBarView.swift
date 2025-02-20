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
            TabBarMapView()
                .tabItem {
                    Image(systemName: "map")
                }
            
            // Page View
            TabBarPageView()
                .tabItem {
                    Image(systemName: "location.fill")
                }
            
            // Navigation between Locations
            TabBarLocationView()
                .tabItem {
                    Image(systemName: "list.bullet")
                }
            
        }
    }
}


struct TabBarMapView: View {
    var body: some View {
        VStack {
            Text("Map")
        }
    }
}

struct TabBarPageView: View {
    var body: some View {
        VStack {
            Text("Page")
        }
    }
}

struct TabBarLocationView: View {
    var body: some View {
        VStack {
            Text("Location")
        }
    }
}

#Preview {
    TabBarView()
}

