//
//  NotificationView.swift
//  Nommies
//
//  Created by Syed ShahRukh Haider on 04/06/2021.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        
        VStack(alignment:.leading, spacing:0) {
            HStack {
                Text("Notification")
                    .font(.custom("HelveticaNeue-Bold", size: 25))
                    
                Spacer()
            }
            .padding(.top, 40)
            .padding()
            .background(Color.white)
            GeometryReader{ geometry in
              
                List{
                    ForEach(0...4, id:\.self){ _ in
                        HStack {
                            Image("avatar1")
                                .resizable()
                                .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .scaledToFill()
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)

                            VStack(alignment:.leading) {
                                Text("Interested")
                                    .font(.custom("HelveticaNeue-Bold", size: 16))
                                Text("Sara Ford showed an interest in your post!")
                                    .font(.custom("HelveticaNeue-Regular", size: 14))
                            }
                        }.padding()
                    }
                }
                .frame(height: (geometry.size.height * 0.105) * 5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .background(Rectangle()
                                .fill(Color(UIColor(red: 0.949, green: 0.949, blue: 0.949, alpha: 1)))
                                .frame(width: GetRect().width, height: GetRect().height)
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
           
          
            

            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
