//
//  ContentView.swift
//  reviewabledemo
//
//  Created by Alok Kumar on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            if #available(iOS 18.0, *) {
                Image(systemName: "airplane")
                    .font(.largeTitle)
                    .imageScale(.large)
                    .foregroundStyle(.red)
                    .symbolEffect(.wiggle)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
