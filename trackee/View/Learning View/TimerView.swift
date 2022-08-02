//
//  TimerView.swift
//  trackee
//
//  Created by Jonathan Ricky Sandjaja on 24/07/22.
//

import SwiftUI

struct TimerView: View {
    var size = SizeHelper()
    @State var countDown = 1500
    @State var timerRunning = false
    let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    
    func secondsToTime(time: Int) -> String {
        let minute = time / 60
        let second = time % 60
        
        return String(format: "%02i:%02i", minute, second)
    }

    var body: some View {
        ZStack {
            Button {
                timerRunning = true
            } label: {
                Text(secondsToTime(time: countDown))
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
