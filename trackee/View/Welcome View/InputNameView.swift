//
//  InputNameView.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 22/07/22.
//

import SwiftUI

struct InputNameView: View {
    var size = SizeHelper()
    
    var body: some View {
        ZStack {
            Color("lightBlue")
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Spacer()
                
                LogoView()
                    
                Spacer()
                
                OnboardImage()
                
                Text("#TrackYourLearning")
                    .fontWeight(.bold)
                
                TextDescription()
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Start")
                        .foregroundColor(Color("lightBlue"))
                        .fontWeight(.semibold)
                }
                .frame(width: size.buttonWidth, height: size.buttonHeight)
                .background(Color("darkBlue"))
                .cornerRadius(8)
                
                Spacer()
            }
            
        }
    }
    
}

struct InputNameView_Previews: PreviewProvider {
    static var previews: some View {
        InputNameView()
    }
}
