//
//  UserProfileView.swift
//  Nommies
//
//  Created by Syed ShahRukh Haider on 08/06/2021.
//

import SwiftUI

struct UserProfileView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
       
        VStack{
      
            ZStack(alignment:.top) {
                Rectangle()
                                .fill(Color.white)
                                .frame(width: GetRect().width, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .shadow(color: .gray, radius: 1, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 1.25)
                                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                HStack {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                           Image(systemName: "arrow.backward")
                            .foregroundColor(.black)
                        })
                        Spacer()
                        Text("User Profile")
                            .font(.custom("HelveticaNeue-Medium", size: 16))
                        Spacer()
                    }
                .padding(.horizontal)
            }
                
                        
                
            
            ScrollView{
        VStack(spacing: 20) {
         
            
            Image("avatar1")
                .resizable()
                .frame(width: 92, height: 92, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .scaledToFill()
                
               
            
            Text("My Name")
                .font(.custom("HelveticaNeue-Bold", size: 20))
           
            
            VStack(alignment: .leading, spacing: 20){
                HStack {
                    Text("About")
                        .font(.custom("HelveticaNeue-Medium", size: 16))
                    Spacer()
                }
                
                Text("""
My name is Carol Reid and I enjoy meeting new people and finding ways to help them have an uplifting experience. I enjoy reading, and the knowledge.

and perspective that my reading gives me has strengthened abilities. Opportunities, through which I was able to have fewer returned products and increased repeat customers, when compared with co-workers.
""") .font(.custom("HelveticaNeue-Regular", size: 15))
                
                VStack(alignment:.leading, spacing: 5){
                Text("Interested")
                    .font(.custom("HelveticaNeue-Medium", size: 16))
                
                ScrollView(.horizontal, showsIndicators: false, content: {
                    
                    LazyHStack {
                        
                        ForEach(0...4, id:\.self){_ in
                           
                            Text("Hotpot")
                                .font(.custom("HelveticaNeue-Regular", size: 14))
                                .padding()
                                .padding(.horizontal,10)
                                .background(RoundedRectangle(cornerRadius: 12)
                                    .fill(Color(UIColor(red: 0.945, green: 0.961, blue: 0.961, alpha: 1)))
                                            .shadow(radius: 0.5))

                        }
                    }
                })
            }
                
                VStack(alignment:.leading, spacing: 5){
                Text("Location")
                    .font(.custom("HelveticaNeue-Medium", size: 16))
                    
                    InsetMapView()
                        .frame(height: 180)
                
            }

                VStack(alignment:.leading, spacing: 5){
                Text("Photos")
                    .font(.custom("HelveticaNeue-Medium", size: 16))
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack {
                            
                            ForEach(1...3, id:(\.self)){index in
                                Image("sample\(index)")
                                    .resizable()
                                    .frame(width: 83, height: 83, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                            }
                        }
                    })
                
            }

                
            }

            Spacer()
        }
       
        .padding()
        

        }
    }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        .overlay(
            
            VStack {
                Spacer()
                ZStack{
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: GetRect().width, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    HStack {
                        Image("dp_small")
                            .resizable()
                            .scaledToFill()
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .frame(width: 36, height: 36, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        VStack(alignment:.leading) {
                            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                                .font(.custom("HelveticaNeue-Bold", size: 16))
                            Text("234 Canal St, New York, NY 10013")
                                .foregroundColor(.gray)
                                .font(.custom("HelveticaNeue-Regular", size: 13))
                        }
                        Button(action: {
                            
                        }, label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 18)
                                    .fill(Color(#colorLiteral(red: 0.1025352255, green: 0.3505379558, blue: 0.3216813207, alpha: 1)))
                                    .frame(width: 90, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                Text("Request")
                                    .font(.custom("HelveticaNeue-Bold", size: 14))
                                    .foregroundColor(.white)
                                    .padding()
                            }
                        })
                        .padding()
                        
                    }
                    
                }
            }.edgesIgnoringSafeArea(.bottom)
            , alignment: .bottom)
        
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
