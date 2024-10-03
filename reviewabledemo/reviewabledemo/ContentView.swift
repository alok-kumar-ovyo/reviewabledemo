//
//  ContentView.swift
//  reviewabledemo
//
//  Created by Alok Kumar on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAddTapped = false
    @State private var isModifyTapped = false
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                
                Spacer()
                
                HStack(spacing: 0) {
                    Button {
                        isAddTapped.toggle()
                    } label: {
                        Text("Add")
                            .frame(width: geo.size.width/2, height: 46)
                    }
                    
                    Button {
                        isModifyTapped.toggle()
                    } label: {
                        Text("Modify")
                            .frame(width: geo.size.width/2, height: 46)
                    }
                }
                .frame(width: geo.size.width)
            }
            .frame(width: geo.size.width, height: geo.size.height)
            .alert("Add CTA Tapped", isPresented: $isAddTapped) {
                Button("OK", role: .cancel) {
                    print("here @ Add")
                }
            }
            .alert("Modify CTA Tapped", isPresented: $isModifyTapped) {
                Button("OK", role: .cancel) {
                    print("here @ Modify")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
