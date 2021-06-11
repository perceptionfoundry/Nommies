//
//  EditProfileView.swift
//  Nommies
//
//  Created by Syed ShahRukh Haider on 11/06/2021.
//

import SwiftUI

struct EditProfileView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack(alignment:.leading, spacing: 30) {
            HStack{
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "arrow.backward")
                        .foregroundColor(.black)
                })
                Spacer()
            }.padding(.horizontal)
            
            ScrollView{
                VStack{
                VStack(alignment:.leading) {
                Text("Edit Profile")
                    .font(.custom("HelveticaNeue-Bold", size: 25))
                Text("You can change your personal information any time!")
                    .foregroundColor(.gray)
                    .font(.custom("HelveticaNeue-Regular", size: 17))
            }
            .padding()
                    
                    HStack{
                        Image("Edit_DP")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .clipShape(Circle())
                        VStack(alignment:.leading) {
                        Text("Profile Image")
                            .font(.custom("HelveticaNeue-Regular", size: 18))
                        Text("Help your friend to recognize you easier in app")
                            .foregroundColor(.gray)
                            .font(.custom("HelveticaNeue-Regular", size: 17))
                    }

                    }
            
                    VStack{
            EditTFView(title: "Full Name", placeHolder: "eg William Sam")
            
            EditTFView(title: "Email", placeHolder: "eg username@gmail.com")
            
            EditTFView(title: "Phone Number", placeHolder: "+ 1(234)32356789")
            
            EditTFView(title: "Phone Number", placeHolder: "+ 1(234)32356789")
            
            
            
            VStack(alignment:.leading){
                Text("About")
                    .foregroundColor(.black)
                    .font(.custom("HelveticaNeue-Regular", size: 17))
                
                
                
                ZStack(alignment: .top) {
                    RoundedRectangle(cornerRadius: 25.0)
                                    .stroke(Color(#colorLiteral(red: 0.8970294595, green: 0.9264832139, blue: 0.9258288145, alpha: 1)))
                        .frame(width: GetRect().width * 0.925, height: 100)
                    
                    TextField("Some about you!", text: .constant(""))
                        .font(.custom("HelveticaNeue-Regular", size: 14))
                        .lineLimit(4)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .frame(width: GetRect().width * 0.8)
                        .padding()
                }
                    
            }
            
            VStack(alignment:.leading) {
            
                HStack {
                   
                    VStack(alignment:.leading) {
                        Text("Upload Images")
                            .font(.custom("HelveticaNeue-Regular", size: 16))
                        
                    }
                }
                
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack {
                        
                        ForEach(1...3, id:(\.self)){index in
                            Image("Camera")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 90, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                        }
                    }
                })
              
            }.padding()
            
                    }.padding(.horizontal, 5)
            Spacer()
            SubmissionButtonView(action: {
                
            }, title: "Save Changes")}}
        }
        .padding()
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}

struct EditTFView: View {
    
    var title : String
    var placeHolder : String
    
    var body: some View {
        VStack(alignment:.leading){
            Text(title)
                .foregroundColor(.black)
                .font(.custom("HelveticaNeue-Regular", size: 17))
            
            
            
            TextField(placeHolder, text: .constant(""))
                .font(.custom("HelveticaNeue-Regular", size: 14))
                
                .frame(width: GetRect().width * 0.85, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
                .background(RoundedRectangle(cornerRadius: 25.0)
                                .stroke(Color(#colorLiteral(red: 0.8970294595, green: 0.9264832139, blue: 0.9258288145, alpha: 1))))
        }
    }
}
