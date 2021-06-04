//
//  DoneView.swift
//  Nommies
//
//  Created by Syed ShahRukh Haider on 02/06/2021.
//

import SwiftUI

struct DoneView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var isSegue = false
    var body: some View {
      
        ScrollView{
                VStack{
                    
                    Image("Logo_small")
                        .padding(.bottom, 50)
                    Image("Love")
                        .resizable()
//                        .frame( height: GetRect().height * 0.325, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .scaledToFit()
                    Text("Awesome")
                        .font(.custom("HelveticaNeue-Bold", size: 30))
                        .padding(.bottom)
                    Text("Thanks for taking your time to create account with us. Now this is the fun part, let’s explore the app.")
                        .font(.custom("HelveticaNeue-Regular", size: 17))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .frame(width: GetRect().width * 0.7)
                    
                   
                    NavigationLink(
                        destination: TabMainView(),
                        isActive: $isSegue,
                        label: {
                            SubmissionButtonView(action: startButtonAction, title: "Let's start")
                        })

                  
                   
                   
                }// VStack - MAIN (END)
    }
                .padding()
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
                
            }
    
    func startButtonAction(){
        isSegue = true
    }
}

struct DoneView_Previews: PreviewProvider {
    static var previews: some View {
        DoneView()
    }
}
