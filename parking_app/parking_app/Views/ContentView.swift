//
//  ContentView.swift
//  parking_app
//
//  Created by Pat Jojola on 4/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 30) {
                Text("Aggie Park")
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                    .padding(.bottom, 108.0)
                
                NavigationLink(destination: DetailView() ) {
                    Text("Find Parking")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .background(Color("Crimson"))
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .padding(.horizontal,30)
                }
                
                NavigationLink(destination: CampusMap() ) {
                    Text("Campus Map")
                       .frame(minWidth: 0, maxWidth: .infinity)
                       .padding()
                       .background(Color("Crimson"))
                       .foregroundColor(.white)
                       .cornerRadius(40)
                       .padding(.horizontal,30)
                }
                NavigationLink(destination: Settings() ) {
                    Text("Settings")
                       .frame(minWidth: 0, maxWidth: .infinity)
                       .padding()
                       .background(Color("Crimson"))
                       .foregroundColor(.white)
                       .cornerRadius(40)
                       .padding(.horizontal,30)
                }
                                
                Text("Scuff Development Inc.")
                    .font(.footnote)
                    .padding(.top, 100.0)
            } // v stack
        } // nav view
        .accentColor(Color("Crimson"))
    } // var body
} // content view


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
