//
//  FoodieView.swift
//  Nommies
//
//  Created by Syed ShahRukh Haider on 04/06/2021.
//

import SwiftUI

struct FoodieView: View {
    
    @State var openChat  = false

    var body: some View {
        
        VStack(alignment:.leading, spacing:0) {
            HStack {
                Text("Foodies")
                    .font(.custom("HelveticaNeue-Bold", size: 25))
                    
                Spacer()
            }
            .padding(.top, 40)
            .padding()
            .background(Color.white)
            GeometryReader{ geometry in
              
                ScrollView{
                VStack{
                    
                    ForEach(0...4, id:\.self){ _ in
                      
                        NavigationLink(
                            destination: ChatView(),
                            isActive: $openChat,
                            label: {
                                
                                Button(action: {
                                    openChat.toggle()
                                }, label: {
                                    FoodieCellView()
                                        
                                })
                            })
                               
                                    
                       
                    }
                    
                }
                .frame(height: (geometry.size.height * 0.13) * 5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
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

struct FoodieView_Previews: PreviewProvider {
    static var previews: some View {
        FoodieView()
    }
}

struct FoodieCellView: View {
    var body: some View {
        HStack{
            Image("avatar1")
                .resizable()
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .scaledToFill()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding(.trailing, 5)
            
            VStack(alignment:.leading) {
                Text("John")
                    .font(.custom("HelveticaNeue-Bold", size: 16))
                    .foregroundColor(.black)
                
                Text("How are u??")
                    .font(.custom("HelveticaNeue-Regular", size: 14))
                    .foregroundColor(.black)
                    .lineLimit(1)
            }
            .frame(width: 130)
            Spacer()
            VStack(alignment:.trailing) {
                Text("5 mins ago")
                    .font(.custom("HelveticaNeue-Regular", size: 12))
                    .foregroundColor(.black)
                    .padding(.bottom, 4)
                Text("10")
                    .font(.custom("HelveticaNeue-Regular", size: 10))
                    .foregroundColor(.white)
                    .frame(width: 25, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    .background(Circle()
                                    .fill(Color(#colorLiteral(red: 0.1025352255, green: 0.3505379558, blue: 0.3216813207, alpha: 1))))
            }
            .frame(width: 80)
        }.padding()
        .background(Color.white)
    }
}
