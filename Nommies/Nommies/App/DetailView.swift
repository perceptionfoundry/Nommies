//
//  DetailView.swift
//  Nommies
//
//  Created by Syed ShahRukh Haider on 15/06/2021.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack(alignment:.leading){
            // TOP
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "arrow.backward")
                        .foregroundColor(.black)
                })
              
               Spacer()
                    Text("Details")
                        .font(.custom("HelveticaNeue-Regular", size: 16))
               
                Spacer()
                
                
                
            }
            .padding()
            
           // TITLE
            VStack(alignment:.leading) {
                Text("Tea House")
                    .font(.custom("HelveticaNeue-Bold", size: 25))
                    .padding(.bottom, 5)
                Text("234 Canal St, New York, NY 10013")
                    .foregroundColor(.gray)
                    .font(.custom("HelveticaNeue-Regular", size: 17))
            }
            .padding()
            
            ScrollView(.horizontal, showsIndicators: false, content: {
                
                HStack {
                    ForEach(1...3, id:\.self){ i in
                        
                        Image("sample\(i)")
                            .resizable()
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                            .frame(width: GetRect().width * 0.8,height: 150)
                    }
                }
            })
            .padding(.bottom)
            .padding()
            
            HStack {
                Spacer()
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: GetRect().width * 0.95, height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            
            VStack(alignment:.leading){
            Text("Interested")
                .foregroundColor(.black)
                .font(.custom("HelveticaNeue-Regular", size: 17))
                .padding(.leading)
            
            ScrollView{
                VStack{
                    ForEach(0...4, id:\.self){ _  in
                        InterestUserView()
                    }
                }
            }
            
            }
            Spacer()
    }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
