//
//  EmptyLearningView.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 28/07/22.
//

import SwiftUI

struct EmptyLearningView: View {
    var size = SizeHelper()
    
    var body: some View {
        VStack {
            Image("learning-empty")
                .resizable()
                .frame(width: size.emptyLearningImageWidth, height: size.emptyLearningImageHeight)
                .padding(.bottom)
            
            Text("You don’t have any learnings yet!")
                .foregroundColor(Color("darkGray"))
                .fontWeight(.medium)
        }
        
        Spacer()
    }
}

struct EmptyLearningView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyLearningView()
    }
}
