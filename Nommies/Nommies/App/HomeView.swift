//
//  HomeView.swift
//  Nommies
//
//  Created by Syed ShahRukh Haider on 02/06/2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        VStack {
           
   
            Spacer()
                VStack {
                    ZStack(alignment:.top) {
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            
                            .fill(Color.white)
                            .frame(height: GetRect().height * 0.4 , alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .shadow(radius: 1)
                        VStack {
                            Capsule()
                                .fill(Color(#colorLiteral(red: 0.8970294595, green: 0.9264832139, blue: 0.9258288145, alpha: 1)))
                                .frame(width: 38, height: 3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .padding(.top, 10)
                            
                            ScrollView{
                                LazyVStack{
                                    ForEach(1...10,id:\.self){ _ in
                                        HomeCellView()
                                    }
                                }
                            }.padding(.top, 20)
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(height: 50)
                            
                        }
                        .frame(height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                    }
                    
                    
                }.offset(x: 0, y: 40)
               
                
            
          
        }.background(
            VStack {
                HStack{
                    Image(systemName: "magnifyingglass")
                    TextField("Search", text: .constant(""))
                }
                .frame(width: GetRect().width * 0.85, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
                .background(RoundedRectangle(cornerRadius: 12)
                                .fill(Color(#colorLiteral(red: 0.9462324977, green: 0.9613170028, blue: 0.9609023929, alpha: 1))))
                InsetMapView()
            })
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
