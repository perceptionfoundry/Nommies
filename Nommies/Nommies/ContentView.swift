//
//  ContentView.swift
//  Nommies
//
//  Created by Syed ShahRukh Haider on 01/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        #if DEV
        Text("Hello, DEV!")
            .padding()
        #endif
        #if PROD
        Text("Hello, PROD!")
            .padding()
        #endif
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
