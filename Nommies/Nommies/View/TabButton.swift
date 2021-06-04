//
//  TabButton.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 26/05/2021.
//

import SwiftUI

struct TabButton: View {
    
 
    
    var imageName : String
    @Binding var selectedTab : String
    
    var body: some View {
       
    
        Button(action: {
            selectedTab = imageName
        }, label: {
           
            
            Image(selectedTab == imageName ?   "\(imageName)_Selected": imageName)
                    .padding()
                
        
        })
    }
}

struct TabButton_Previews: PreviewProvider {
    
    static var previews: some View {
        TabButton(imageName: "Home_Selected", selectedTab: .constant("fav"))
            .previewLayout(.sizeThatFits)
    }
}
