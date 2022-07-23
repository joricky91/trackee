//
//  LogoView.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 22/07/22.
//

import SwiftUI

struct LogoView: View {
    var size = SizeHelper()
    
    var body: some View {
        Text("trackee.")
            .font(.system(size: size.headingFont))
            .fontWeight(.heavy)
            .foregroundColor(Color("darkGray"))
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
