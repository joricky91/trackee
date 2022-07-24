//
//  LearningHeader.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 24/07/22.
//

import SwiftUI

struct LearningHeader: View {
    let radius = CGFloat(15)
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Button {
                    
                } label: {
                    HStack {
                        Image(systemName: "chevron.left")
                        
                        Text("Back")
                    }
                    .foregroundColor(Color("lightRed"))
                }
                
                Spacer()
                
                Text("Core Data")
                    .fontWeight(.semibold)
                    .foregroundColor(Color("lightBlue"))
                    .padding(.trailing, 50)
                
                Spacer()
            }
            .padding()
            .frame(width: UIScreen.main.bounds.width)
        }
        .frame(maxHeight: UIScreen.main.bounds.width * 0.238)
        .background(Color("darkBlue"))
        .padding(.top, radius)
        .cornerRadius(radius)
        .padding(.top, -radius)
    }
}

struct LearningHeader_Previews: PreviewProvider {
    static var previews: some View {
        LearningHeader()
    }
}
