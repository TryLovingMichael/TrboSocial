//
//  ContentView.swift
//  TrboSocial
//
//  Created by Michael Hayden on 2023-04-25.
//

import SwiftUI



struct ContentView: View {
    
    @State private var showLoginView = false

    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Button("Login") {
                self.showLoginView = true
            }
            .padding()
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
            .sheet(isPresented: $showLoginView) {
                LoginView()
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
