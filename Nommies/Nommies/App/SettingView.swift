//
//  SettingView.swift
//  Nommies
//
//  Created by Syed ShahRukh Haider on 09/06/2021.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
      
            Rectangle()
                .fill(Color.white)
                .frame(width: GetRect().width, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(y: -90)
            VStack(alignment:.leading, spacing:0) {
                ZStack(alignment:.top) {
                    Rectangle()
                                    .fill(Color.white)
                                    .frame(width: GetRect().width, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                    HStack {
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            }, label: {
                               Image(systemName: "xmark")
                                .foregroundColor(.black)
                            })
                            Spacer()
                            Text("Settings")
                                .font(.custom("HelveticaNeue-Medium", size: 16))
                            Spacer()
                        }
                    .padding()
                }
                
                Group {
                    
                    //Contact
                    Button(action: {
                        
                    }, label: {
                        VStack {
                            HStack {
                                    Text("Contact Us")
                                        .foregroundColor(.black)
                                    
                                Spacer()
                            }.padding(.horizontal)
                            
                            Rectangle()
                                .fill(Color.gray)
                                .frame(height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .padding()

                        }
                    })
                    
                  //Privacy
                    Button(action: {
                        
                    }, label: {
                        VStack {
                            HStack {
                                    Text("Privacy Policy")
                                        .foregroundColor(.black)
                                    
                                Spacer()
                            }.padding(.horizontal)
                            
                            Rectangle()
                                .fill(Color.gray)
                                .frame(height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .padding()

                        }
                    })
                   
                    
                    //About
                    Button(action: {
                        
                    }, label: {
                        VStack {
                            HStack {
                                    Text("About Us")
                                        .foregroundColor(.black)
                                    
                                Spacer()
                            }.padding(.horizontal)
                            
                            Rectangle()
                                .fill(Color.gray)
                                .frame(height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .padding()

                        }
                    })
                    
                    
                    //Log Out
                    Button(action: {
                        
                    }, label: {
                        VStack {
                            HStack {
                                    Text("Log out")
                                        .foregroundColor(.black)
                                    
                                Spacer()
                            }.padding(.horizontal)
                            
                            Rectangle()
                                .fill(Color.gray)
                                .frame(height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .padding()

                        }
                    })
                    
                } .background(Color.white)
                .frame(width: GetRect().width)
                
                            }
            .offset(y: -110)
            Spacer()
            
            Image("Logo_small")
            
            Text("V1.0")
                .foregroundColor(.black)
                .font(.headline)
        }
        .background(Rectangle()
                            .fill(Color(UIColor(red: 0.949, green: 0.949, blue: 0.949, alpha: 1)))
                            .frame(width: GetRect().width, height: GetRect().height)
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
       
        .padding()
        

        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
