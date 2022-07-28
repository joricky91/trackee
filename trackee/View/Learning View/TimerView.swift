//
//  TimerView.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 24/07/22.
//

import SwiftUI

struct TimerView: View {
    var size = SizeHelper()
    let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
//    @ObservedObject var vm: LearningViewModel
    @State var countDown = 1200
    @State var timerRunning = true

    var body: some View {
        ZStack {
            Button {
                
            } label: {
                Text("\(countDown)")
                    .foregroundColor(Color("darkBlue"))
                    .fontWeight(.semibold)
                    .onReceive(timer) { _ in
                        if countDown > 0 && timerRunning {
                            countDown -= 1
                        } else {
                            timerRunning = false
                        }
                    }
            }
            .frame(width: size.timerWidth, height: size.timerHeight)
            .background(Color("lightGreen"))
            .cornerRadius(90)
            .onTapGesture {
                
            }
        }
        
    }

}

//struct TimerView_Previews: PreviewProvider {
//    static var previews: some View {
//        TimerView(vm: LearningViewModel())
//    }
//}
