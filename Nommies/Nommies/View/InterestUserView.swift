//
//  InterestView.swift
//  Nommies
//
//  Created by Syed ShahRukh Haider on 15/06/2021.
//

import SwiftUI

struct InterestUserView: View {
    var body: some View {
        
        VStack(alignment:.leading){
            
            HStack{
                Image("avatar1")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
                
                VStack(alignment:.leading){
                    Text("Sara Ford")
                        .foregroundColor(.black)
                        .font(.custom("HelveticaNeue-Bold", size: 16))
                    Text("Mar 13, 2021 , 10:00 AM")
                        .foregroundColor(.gray)
                        .font(.custom("HelveticaNeue-Regular", size: 13))
                }
            }.padding()
            
            Text("Interests")
                .foregroundColor(.black)
                .font(.custom("HelveticaNeue-Regular", size: 13))
            Text("Hotpot, Thai, Chinese,bubble tea")
                .foregroundColor(.black)
                .font(.custom("HelveticaNeue-Regular", size: 13))
            
            Image("sample1")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .frame(height: 180)
            
            SubmissionButtonView(action: {
                
            }, title: "Request")
            
        }.padding()
    }
}

struct InterestView_Previews: PreviewProvider {
    static var previews: some View {
        InterestUserView()
            .previewLayout(.sizeThatFits)
    }
}
