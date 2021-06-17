//
//  ChatView.swift
//  Nommies
//
//  Created by Syed ShahRukh Haider on 15/06/2021.
//

import SwiftUI

struct ChatView: View {
    @Environment(\.presentationMode) var presentationMode
    let dummyMsg = [msgData(id: 0,image:"avatar1",user: "jetson", msg: "Hi there!", myMsg: false),
                    msgData(id: 1,image:"avatar2",user: "me", msg: "How are you?", myMsg: true),
                    msgData(id: 2,image:"avatar1",user: "jetson", msg: "New Album is Going to be Release", myMsg: false),
                    msgData(id: 3,image:"avatar2",user: "me", msg: "Have you added to any online store?? Have you added to any online store?? Have you added to any online store?? Have you added to any online store??", myMsg: true)]
    
    var body: some View {
        
        VStack{
            // TOP
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "arrow.backward")
                        .foregroundColor(.black)
                })
                
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
                Spacer()
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image("Menu_dot")
                        .foregroundColor(.black)
                })
                
                
            }
            .padding()
            .background(Rectangle()
                            .fill(Color.white)
                            .shadow(color: Color(#colorLiteral(red: 0.905529201, green: 0.9001463652, blue: 0.9096670151, alpha: 1)), radius: 1, x: 0, y: 4))
            
            
            ScrollView{
                
                
                ForEach(0...3, id:\.self){ i in
                    
                    
                    ChatCellView(data: dummyMsg[i])
                    
                }
                
                
            }
            Spacer()
            // BOTTOM
            ZStack {
                Rectangle()
                    .fill(Color.white)
                    .shadow(color: Color(#colorLiteral(red: 0.905529201, green: 0.9001463652, blue: 0.9096670151, alpha: 1)), radius: 1, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: -4)
                    .frame(width: GetRect().width , height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                HStack{
                    TextField("Type your message", text: .constant(""))
                    
                    Image("Send")
                        .resizable()
                        .frame(width: 20, height: 20)
                }.padding()
                .background(RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.gray)
                )
                .frame(width: GetRect().width * 0.9, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
        
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}


struct msgTail : Shape{
    var myMsg : Bool
    
    func path(in rect: CGRect) -> Path{
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight,!myMsg ? .bottomLeft : .bottomRight], cornerRadii: CGSize(width: 25, height: 25))
        
        return Path(path.cgPath)
    }
}

struct ChatCellView: View {
    
    var data : msgData
    
    
    var body: some View {
        
        if data.myMsg {
            HStack {
                VStack(alignment:.leading) {
                    
                    HStack(alignment:.bottom) {
                        
                        Image(data.image)
                            .resizable()
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        VStack(alignment:.leading) {
                            Text(data.user)
                                .font(.caption)
                                .bold()
                                .foregroundColor(data.myMsg ? Color(#colorLiteral(red: 0.08047603816, green: 0.2509688139, blue: 0.2315770388, alpha: 1)) : Color(#colorLiteral(red: 0.9465420842, green: 0.9613066316, blue: 0.9608973861, alpha: 1)))
                                .padding(1)
                            
                            Text(data.msg)
                                .font(.subheadline)
                                .foregroundColor(data.myMsg ? Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)) : Color(#colorLiteral(red: 0.9465420842, green: 0.9613066316, blue: 0.9608973861, alpha: 1)))
                        }
                        .padding()
                        
                        .background(data.myMsg ?  Color(#colorLiteral(red: 0.9465420842, green: 0.9613066316, blue: 0.9608973861, alpha: 1)):Color(#colorLiteral(red: 0.08047603816, green: 0.2509688139, blue: 0.2315770388, alpha: 1)))
                        .clipShape(msgTail(myMsg: data.myMsg))
                    }
                    
                    
                }
                Spacer()
            }
            .padding(.trailing, 35)
            .padding()
        }else{
            HStack {
                Spacer()
                VStack(alignment:.trailing) {
                    
                    HStack(alignment:.bottom) {
                        
                        
                        VStack(alignment:.leading) {
                            Text(data.user)
                                .font(.caption)
                                .bold()
                                .foregroundColor(data.myMsg ? Color(#colorLiteral(red: 0.08047603816, green: 0.2509688139, blue: 0.2315770388, alpha: 1)) : Color(#colorLiteral(red: 0.9465420842, green: 0.9613066316, blue: 0.9608973861, alpha: 1)))
                                .padding(1)
                            
                            Text(data.msg)
                                .font(.subheadline)
                                .foregroundColor(data.myMsg ? Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)) : Color(#colorLiteral(red: 0.9465420842, green: 0.9613066316, blue: 0.9608973861, alpha: 1)))
                        }
                        .padding()
                        .background(data.myMsg ?  Color(#colorLiteral(red: 0.9465420842, green: 0.9613066316, blue: 0.9608973861, alpha: 1)):Color(#colorLiteral(red: 0.08047603816, green: 0.2509688139, blue: 0.2315770388, alpha: 1)))
                        .clipShape(msgTail(myMsg: data.myMsg))
                        
                        Image(data.image)
                            .resizable()
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    
                    
                }
                
            }
            .padding(.leading, 35)
            .padding()
        }
    }
}


// MODEL:

struct msgData {
    var id : Int
    var image:String
    var user : String
    var msg : String
    var myMsg : Bool
}





