//
//  HomeView.swift
//  LizB
//
//  Created by Christian Bain on 11/26/20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {

        TabView {
            FeedView()
            .tabItem {
                // home icon? house house.fill
                // film film.fill
                // rectance.stack.person.crop
                // person.2.square.stack
                // square.stack
                
                Image(systemName: "doc.plaintext")
                Text("Feed")
            }
            WorkoutView()
            .tabItem {
                // waveform.circle
                Image(systemName: "waveform.path.ecg")
                Text("Workouts")
            }
            ProfileView()
            .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
            }
        }
        .accentColor(Color("blue1"))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
