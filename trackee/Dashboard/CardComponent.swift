//
//  CardComponent.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 23/07/22.
//

import SwiftUI

struct CardComponent: View {
    @State var categ: String
    @State var title: String
    @State var dur: Int
    
    var body: some View {
        HStack {
            Image(systemName: categ)
                .font(.title)
                .padding(.leading)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("\(dur) hour")
            }
            
            Spacer()
            
            Image(systemName: "chevron.forward")
                .font(.title3)
                .padding(.trailing)
        }
        .frame(width: UIScreen.main.bounds.width * 0.923, height: UIScreen.main.bounds.width * 0.236)
        .background(.white)
        .cornerRadius(15)
    }
}

//struct CardComponent_Previews: PreviewProvider {
//    static var previews: some View {
//        CardComponent()
//    }
//}
