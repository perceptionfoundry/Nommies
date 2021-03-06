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
           
            VStack{
            Image(selectedTab == imageName ?   "\(imageName)_Selected": imageName)
                    .padding()
                .padding(.bottom, 2)
                Text(imageName)
                    .foregroundColor(Color(#colorLiteral(red: 0.1025352255, green: 0.3505379558, blue: 0.3216813207, alpha: 1)))
                    .font(.custom("HelveticaNeue-Regular", size: 10))
                    .offset(y: -15)
                    
            }
        
        })
    }
}

struct TabButton_Previews: PreviewProvider {
    
    static var previews: some View {
        TabButton(imageName: "Home_Selected", selectedTab: .constant("fav"))
            .previewLayout(.sizeThatFits)
    }
}
