//
//  CustomTabView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 26/05/2021.
//

import SwiftUI

struct CustomTabView: View {
        
    var tabs = ["Home","Foodies","Center1","Notification","Profile"]
    
    @State var selectedTab = "Home"
    @State var isNew = false
    

    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)){
            
            
            TabView(selection: $selectedTab){
                HomeView()
                    .tag("Home")
                FoodieView()
                    .tag("Foodies")
                HomeView()
                    .tag("Center")
                NotificationView()
                    .tag("Notification")
                ProfileView()
                    .tag("Profile")
            }
            .ignoresSafeArea(.all, edges: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
            
            
            VStack{
            HStack{
                ForEach(tabs, id:\.self){ Value in
                Spacer()
        TabButton(imageName: Value, selectedTab: $selectedTab)
                 Spacer()
                }
            }
            .frame(width: UIScreen.main.bounds.width * 0.975)
            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .clipShape(RoundedRectangle( cornerRadius: 14))
            .shadow(radius: 2)
            .zIndex(0)
                
                Rectangle()
                    .fill(Color.white)
                    .frame(height:20)
                    .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    .offset(x: 0, y: -20)
        }
            .offset(x: 0, y: 35)
        }.padding()
        .edgesIgnoringSafeArea(.bottom)
        .fullScreenCover(isPresented: $isNew, content: {
            CreatePostView()
        })
        .overlay(Button(action: {
            isNew.toggle()

        }, label: {
            Image("Center")
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(y:-5)
        }), alignment: .bottom)
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
            .previewLayout(.sizeThatFits)
    }
}
