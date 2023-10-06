//
//  ContentView.swift
//  NetworkLayerDemo
//
//  Created by Theo Ntogiakos on 02/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "globe")
                .resizable()
                .frame(width: 100, height: 100)
            VStack(alignment: .leading) {
                Text("ID:")
                Text("Title:")
                Text("First Name:")
                Text("Last Name:")
                Text("Email:")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}


//let id: String?
//let title: String?
//let firstName: String?
//let lastName: String?
//let email: String?
//let picture: String?
