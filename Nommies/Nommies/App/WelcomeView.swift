//
//  ContentView.swift
//  Nommies
//
//  Created by Syed ShahRukh Haider on 01/06/2021.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
//        #if DEV
//        Text("Hello, DEV!")
//            .padding()
//        #endif
//        #if PROD
//        Text("Hello, PROD!")
//            .padding()
//        #endif
        ScrollView{
        VStack{
            
            Image("Logo_small")
            
            Image("People")
            
            VStack{
                
                VStack(alignment:.leading, spacing:10) {
                    HStack{
                        Spacer()
                    }
                    Text("Welcome Back!")
                        .font(.custom("HelveticaNeue-Bold", size: 30))
                        
                    Text("it’s good to see you again, lets start!")
                        .font(.custom("HelveticaNeue-Regular", size: 15))
                        .foregroundColor(.gray)
                        .padding(.bottom)
                    
                    Text("Email")
                        .font(.custom("HelveticaNeue-Regular", size: 14))
                    
                        //MARK: Email Textfield
                    TextField("eg. username@email.com", text: .constant(""))
                        .font(.custom("HelveticaNeue-Regular", size: 14))
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 18)
                                .stroke(Color.gray)
                                )
                    
                    SubmissionButtonView(action: signInAction, title: "Sign IN")
                }.padding()
                
            }.background(RoundedRectangle(cornerRadius: 30)
                            .fill(Color.white)
                            .frame(width: GetRect().width, height: GetRect().height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .shadow(radius: 1)
                            .offset(x: 0, y: UIScreen.main.bounds.height *  0.3 ))
            
            Spacer()
            
            //MARK: Term Button
            VStack{
            Text("By signing in, you agree with our") + Text(" Term of Use")
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }.padding(.bottom, 2)
            .font(.custom("HelveticaNeue-Regular", size: 15))
            .onTapGesture {
                
            }
            
            //MARK: Privacy Button
            VStack{
            Text(" and") +
                Text(" Privacy Policy ")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            .font(.custom("HelveticaNeue-Regular", size: 15))
            .onTapGesture {
                
            }
            .padding(.bottom)
        }// VStack - MAIN (END)
        }// ScrollView - MAIN (END)
            
    }
    
    func signInAction(){
        print("yahoo!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
