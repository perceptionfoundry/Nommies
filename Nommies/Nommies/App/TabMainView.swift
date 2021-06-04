//
//  TabMainView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 26/05/2021.
//

import SwiftUI

struct TabMainView: View {
  
    var body: some View {
        
    
        VStack {
            CustomTabView()
    
        }
        .padding()
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct TabMainView_Previews: PreviewProvider {
    static var previews: some View {
        TabMainView()
    }
}
