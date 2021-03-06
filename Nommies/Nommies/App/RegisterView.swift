//
//  RegisterView.swift
//  Nommies
//
//  Created by Syed ShahRukh Haider on 02/06/2021.
//

import SwiftUI

struct RegisterView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var isSegue = false
    var body: some View {
      
        ScrollView{
                VStack{
                    
                    HStack{
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                                .foregroundColor(.black)
                        })
                        Spacer()
                    }
                    
                    Image("Mail")
                        .resizable()
//                        .frame( height: GetRect().height * 0.325, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .scaledToFit()
                    Text("Check Your email")
                        .font(.custom("HelveticaNeue-Bold", size: 30))
                        .padding(.bottom)
                    Text("We sent an email to you at")
                        .font(.custom("HelveticaNeue-Regular", size: 17))
                        .foregroundColor(.gray)
                    
                    Text("email@email.com")
                        .font(.custom("HelveticaNeue-Regular", size: 17))
                        .bold()
                        .foregroundColor(.black) +   Text(". It has a magic link that'll")
                        .font(.custom("HelveticaNeue-Regular", size: 17))
                        .foregroundColor(.gray)
                    
                    Text("sign you in.")
                        .font(.custom("HelveticaNeue-Regular", size: 17))
                        .foregroundColor(.gray)
                       

                    NavigationLink(
                        destination: DoneView(),
                        isActive: $isSegue,
                        label: {
                            SubmissionButtonView(action: mailButtonAction, title: "Open Mail App")
                        })
                    
                   
                   
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        HStack {
                            Text("Sign in with different email")
                                .font(.custom("HelveticaNeue-Regular", size: 15))
                                .foregroundColor(.black)
                            
                            Image(systemName: "arrow.right")
                                .foregroundColor(.black)
                        }
                    })
                }// VStack - MAIN (END)
    }
                .padding()
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
                
            }
    
    func mailButtonAction(){
        isSegue = true
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
