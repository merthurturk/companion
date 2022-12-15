//
//  ContentView.swift
//  companion
//
//  Created by Mert Hurturk on 15.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var numCommitments: Int = 1
    @State private var commitment: String = ""
    
    var body: some View {
        VStack {
            ForEach((1...numCommitments), id: \.self) {_ in
                TextField(
                    "Commitment",
                    text: $commitment
                )
                .textFieldStyle(.roundedBorder)
            }
            TextField(
                "Commitment",
                text: $commitment
            )
            .textFieldStyle(.roundedBorder)
            Spacer()
            HStack {
                Button {
                    numCommitments += 1
                    print("Button was tapped")
                } label: {
                    Label("Add commitment", systemImage: "plus")
                }
                Spacer()
                Button {} label: {
                    HStack {
                        Text("Continue")
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                        Image(systemName:"chevron.right")
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                    }
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14")
    }
}
