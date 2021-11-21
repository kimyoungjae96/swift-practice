//
//  ContentView.swift
//  Landmarks
//
//  Created by crerar on 2021/11/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height:300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Hello, Youngjae!!!")
                    .font(.title)
                    .foregroundColor(Color.blue)
                HStack {
                    Text("Oh~!")
                    Spacer()
                    Text("Ha~!")
                        
                }.font(.subheadline)
                Divider()

                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
