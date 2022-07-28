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
    @ObservedObject var vm: LearningViewModel
//    var dateFormat: Date? {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "mm:ss"
//        return formatter.date(from: intString())
//    }
    @State var timerRunning = false

    var body: some View {
        ZStack {
            Button {
                timerRunning = !timerRunning
            } label: {
                Text("\(vm.selectedLearning?.duration ?? 0)")
                    .foregroundColor(Color("darkBlue"))
                    .fontWeight(.semibold)
//                    .onReceive(timer) { _ in
//                        if vm.selectedLearning?.duration ?? 0 > 0 && timerRunning {
//                            vm.selectedLearning?.duration -= 1
//                        } else {
//                            timerRunning = false
//                        }
//                    }
            }
            .frame(width: size.timerWidth, height: size.timerHeight)
            .background(Color("lightGreen"))
            .cornerRadius(90)
            .onTapGesture {
                
            }
        }
        
    }
    
    func milliSeconds() -> Int16 {
        return (vm.selectedLearning?.duration ?? 0) * 1000
    }
}

//struct TimerView_Previews: PreviewProvider {
//    static var previews: some View {
//        TimerView(vm: LearningViewModel())
//    }
//}
