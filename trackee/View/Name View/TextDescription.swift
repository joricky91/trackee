//
//  TextDescription.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 22/07/22.
//

import SwiftUI

struct TextDescription: View {
    var size = SizeHelper()
    
    var body: some View {
        Text("An app to document your learning resources and track your learning time.")
            .multilineTextAlignment(.center)
            .foregroundColor(Color("darkGray"))
            .frame(width: size.textDescWidth, height: size.textDescHeight)
    }
}

struct TextDescription_Previews: PreviewProvider {
    static var previews: some View {
        TextDescription()
    }
}
