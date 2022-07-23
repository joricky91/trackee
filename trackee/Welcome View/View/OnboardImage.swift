//
//  OnboardImage.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 22/07/22.
//

import SwiftUI

struct OnboardImage: View {
    var size = SizeHelper()
    
    var body: some View {
        Image("input-name")
            .resizable()
            .frame(width: size.launchImageWidth, height: size.launchImageHeight)
            .padding(.bottom, 20)
    }
}

struct OnboardImage_Previews: PreviewProvider {
    static var previews: some View {
        OnboardImage()
    }
}
