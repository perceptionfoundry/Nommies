//
//  SubmissionButtonView.swift
//  Nommies
//
//  Created by Syed ShahRukh Haider on 02/06/2021.
//

import SwiftUI

struct SubmissionButtonView: View {
    
    var action : ()-> Void
    var title : String
    var body: some View {
        
        Button(action: {
            action()
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 18)
                    .fill(Color(#colorLiteral(red: 0.1025352255, green: 0.3505379558, blue: 0.3216813207, alpha: 1)))
                    .frame(width: GetRect().width * 0.8, height: 56, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text(title)
                    .font(.custom("HelveticaNeue-Bold", size: 16))
                    .foregroundColor(.white)
                    .padding()
            }
        })
        .padding()
       
          
    }
}

//struct SubmissionButtonView_Previews: PreviewProvider {
//    
//    static var previews: some View {
//        SubmissionButtonView(action: ()->Void, title: "Button Sample")
//            .previewLayout(.sizeThatFits)
//    }
//}
