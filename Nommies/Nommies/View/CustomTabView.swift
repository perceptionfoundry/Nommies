//
//  CustomTabView.swift
//  Blendate
//
//  Created by Syed ShahRukh Haider on 26/05/2021.
//

import SwiftUI

struct CustomTabView: View {
        
    var tabs = ["Home","Knife","Center_Button","Notification","Profile"]
    
    @State var selectedTab = "dashboard"
    @State var isNew = false
    

    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)){
            
            
            TabView(selection: $selectedTab){
                HomeView()
                    .tag("Home")
                FoodieView()
                    .tag("Knife")
                HomeView()
                    .tag("Center_Button")
                NotificationView()
                    .tag("Notification")
                ProfileView()
                    .tag("Profile")
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
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
                    .frame(height:15)
                    .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    .offset(x: 0, y: -20)
        }
            .offset(x: 0, y: 30)
        }.padding()
        .sheet(isPresented: $isNew, content: {
            CreatePostView()
        })
        .overlay(Button(action: {
            isNew.toggle()

        }, label: {
            Image("Center_Button")
                .resizable()
                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
        }), alignment: .bottom)
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
            .previewLayout(.sizeThatFits)
    }
}
