//
//  RequestView.swift
//  Nommies
//
//  Created by Syed ShahRukh Haider on 15/06/2021.
//

import SwiftUI

struct RequestView: View {
    
    
    @Binding var isRequired : Bool
    @State var isShowUserProfile = false
    
    var body: some View {
        VStack {
            
            VStack{
                Image("avatar2")
                    .resizable()
                    .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Text("Sara Ford")
                    .foregroundColor(.black)
                    .font(.custom("HelveticaNeue-Bold", size: 16))
                Text("is interested in your post")
                    .foregroundColor(.gray)
                    .font(.custom("HelveticaNeue-Regular", size: 13))
            }
            .padding(.bottom)
            
            VStack(alignment: .leading){
                
                HStack {
                    Image("dp_small")
                        .resizable()
                        .scaledToFill()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 36, height: 36, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    VStack(alignment:.leading) {
                        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
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
                                .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .clipShape(RoundedRectangle(cornerRadius: 15.0))
                        }
                    }
                })
                
               
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 15)
                .fill(Color(#colorLiteral(red: 0.9465420842, green: 0.9613066316, blue: 0.9608973861, alpha: 1))))
            
            VStack {
                Text("Want to start a conversation with Sara Ford?")
                    .font(.custom("HelveticaNeue-Regular", size: 12))
                    .padding()
                
                HStack(){
                    Spacer()
                    //MARK: NO
                    Button(action: {
                        isRequired = false
                        ispopUp = true
                    }, label: {
                        Text("NO")
                            .foregroundColor(.white)
                            .bold()
                            .background(RoundedRectangle(cornerRadius: 12)
                                            .fill(Color(#colorLiteral(red: 0.9705217481, green: 0.6617624164, blue: 0.6287486553, alpha: 1)))
                                .frame(width: GetRect().width * 0.3, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                 )
                            
                    })
                    
                    Spacer(minLength: 125)
                    
                    //YES
                    
                    NavigationLink(
                        destination: UserProfileView(),
                        isActive: $isShowUserProfile,
                        label: {
                          
                            Button(action: {
                                isShowUserProfile.toggle()
                                ispopUp = true
                            }, label: {
                                Text("YES")
                                    .foregroundColor(.white)
                                    .bold()
                                    .background(RoundedRectangle(cornerRadius: 12)
                                                    .fill(Color(#colorLiteral(red: 0.1025352255, green: 0.3505379558, blue: 0.3216813207, alpha: 1)))
                                        .frame(width: GetRect().width * 0.3, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                         )
                                    
                            })
                   
                        
                        
                    })
                

                    Spacer()
                }
            }
            Spacer()
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 15)
                        .fill(Color.white)
                        .shadow(radius: 2)
                        .frame(width: GetRect().width * 0.8, height: GetRect().height * 0.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/))
        .frame(width: GetRect().width * 0.8, height: GetRect().height * 0.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct RequestView_Previews: PreviewProvider {
    static var previews: some View {
        RequestView(isRequired: .constant(true))
            .previewLayout(.sizeThatFits)
    }
}
