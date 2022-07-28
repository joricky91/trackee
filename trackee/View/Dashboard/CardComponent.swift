//
//  CardComponent.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 23/07/22.
//

import SwiftUI

struct CardComponent: View {
    var categ: String
    var title: String
    
    var body: some View {
        HStack {
            Image(systemName: categ == "Tech" ? "chevron.left.forwardslash.chevron.right" : categ == "Design" ? "scribble" : "creditcard")
                .font(.title)
                .padding(.leading)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("20 minutes")
            }
            
            Spacer()
            
            Image(systemName: "chevron.forward")
                .font(.title3)
                .padding(.trailing)
        }
        .padding(.vertical, 25)
        .background(.white)
        .cornerRadius(15)
    }
}

//struct CardComponent_Previews: PreviewProvider {
//    static var previews: some View {
//        CardComponent()
//    }
//}
