//
//  CreatePostView.swift
//  Nommies
//
//  Created by Syed ShahRukh Haider on 04/06/2021.
//

import SwiftUI

struct CreatePostView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack(alignment:.leading, spacing: 30) {
            HStack{
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.black)
                })
                Spacer()
            }.padding()
            
            VStack(alignment:.leading) {
                Text("Create a New Post")
                    .font(.custom("HelveticaNeue-Bold", size: 25))
                Text("Please choose a restaurant and set your availability for the meet up.")
                    .foregroundColor(.gray)
                    .font(.custom("HelveticaNeue-Regular", size: 17))
            }
            .padding()
            
            HStack{
                Image(systemName: "magnifyingglass")
                TextField("Address of Restaurant", text: .constant(""))
                    .font(.custom("HelveticaNeue-Regular", size: 17))
            }
            .frame(width: GetRect().width * 0.85, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding()
            .background(RoundedRectangle(cornerRadius: 18)
                            .fill(Color(#colorLiteral(red: 0.9462324977, green: 0.9613170028, blue: 0.9609023929, alpha: 1))))
            
            VStack(alignment:.leading) {
            
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
                }
                
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack {
                        
                        ForEach(1...3, id:(\.self)){index in
                            Image("sample\(index)")
                                .resizable()
                                .frame(width: 125, height: 83, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                        }
                    }
                })
              
            }.padding()
            .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .stroke(Color(#colorLiteral(red: 0.8970294595, green: 0.9264832139, blue: 0.9258288145, alpha: 1))))
            VStack(alignment:.leading){
            Text("Your availabilities")
                .foregroundColor(.black)
                .font(.custom("HelveticaNeue-Regular", size: 17))
               
            
           
            TextField("Mar 13, 2021 , 10:00 AM", text: .constant(""))
                .font(.custom("HelveticaNeue-Regular", size: 17))
                
                .frame(width: GetRect().width * 0.85, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
                .background(RoundedRectangle(cornerRadius: 25.0)
                                .stroke(Color(#colorLiteral(red: 0.8970294595, green: 0.9264832139, blue: 0.9258288145, alpha: 1))))
        }
            Spacer()
            SubmissionButtonView(action: {
                
            }, title: "POST")
        }
        .padding()
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct CreatePostView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePostView()
    }
}
