//
//  TimerView.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 24/07/22.
//

import SwiftUI

struct TimerView: View {
    var size = SizeHelper()
    var learn: Learning
    
    var body: some View {
        ZStack {
            Button {
                
            } label: {
                Text(learn.duration < 9 ? "0\(learn.duration) : 00" : "\(learn.duration) : 00")
                    .foregroundColor(Color("darkBlue"))
                    .fontWeight(.semibold)
            }
            .frame(width: size.timerWidth, height: size.timerHeight)
            .background(Color("lightGreen"))
            .cornerRadius(90)
        }
    }
}

//struct TimerView_Previews: PreviewProvider {
//    static var previews: some View {
//        TimerView()
//    }
//}
