//
//  HomeCellView.swift
//  Nommies
//
//  Created by Syed ShahRukh Haider on 04/06/2021.
//

import SwiftUI

struct HomeCellView: View {
    @State var totalLike = 2
    var body: some View {
        VStack(alignment:.leading){
        
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
                            .frame(width: 125, height: 83, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                    }
                }
            })
            
            HStack{
                ForEach(1...totalLike, id:(\.self)){index in
                    let offsetValue  = -18 * (index - 1)
                    
                    Image("avatar\(index)")
                        .resizable()
                        .frame(width: 32, height: 32)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .scaledToFill()
                        .zIndex(index > 1 ? Double(index) : 0.0)
                        .offset(x: index > 1 ? CGFloat(offsetValue) : 0)
                }
                
                Text("\(totalLike) Interested")
                    .font(.custom("HelveticaNeue-Bold", size: 16))
                    .foregroundColor(.gray)
                    .offset(x: CGFloat((-8 * totalLike)))
               
                
                
            }
        }.padding()
    }
}

struct HomeCellView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCellView()
            .previewLayout(.sizeThatFits)
    }
}
